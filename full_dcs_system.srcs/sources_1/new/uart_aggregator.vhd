library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity uart_aggregator is
  Generic(
    correlationLength : positive
  );
  Port (
    clk : in std_logic;
    resetn : in std_logic;
    UART_TX : out std_logic;
    UART_RX : in std_logic;
    
    --Individual intensity points
    intensityIn : in std_logic_vector(15 downto 0);
    intensityInValid : in std_logic;
    
    --Packets of autocorrelations
    correlationIn : in std_logic_vector(31 downto 0);
    correlationInValid : in std_logic;
    correlationInLast : in std_logic;
    
    --Analyzer data is alphaDb, beta, and MSE sent in packets
    --Already externally buffered by FIFO
    analyzerIn : in std_logic_vector(31 downto 0);
    analyzerInValid : in std_logic;
    analyzerInLast : in std_logic;
    analyzerInReady : out std_logic;
    
    --Start/stop commands from RX
    start : out std_logic;
    stop : out std_logic;
    
    --UART error
    error : out std_logic
  );
end uart_aggregator;

architecture Behavioral of uart_aggregator is
    ATTRIBUTE X_INTERFACE_INFO : STRING;
    ATTRIBUTE X_INTERFACE_INFO of analyzerIn : SIGNAL is "xilinx.com:interface:axis:1.0 analyzerFIFOInput TDATA";
    ATTRIBUTE X_INTERFACE_INFO of analyzerInLast : SIGNAL is "xilinx.com:interface:axis:1.0 analyzerFIFOInput TLAST";
    ATTRIBUTE X_INTERFACE_INFO of analyzerInValid : SIGNAL is "xilinx.com:interface:axis:1.0 analyzerFIFOInput TVALID";
    ATTRIBUTE X_INTERFACE_INFO of analyzerInReady : SIGNAL is "xilinx.com:interface:axis:1.0 analyzerFIFOInput TREADY";

    component UART is
        Generic (
            CLK_FREQ      : integer := 50e6;   -- system clock frequency in Hz
            BAUD_RATE     : integer := 115200; -- baud rate value
            PARITY_BIT    : string  := "none"; -- type of parity: "none", "even", "odd", "mark", "space"
            USE_DEBOUNCER : boolean := True    -- enable/disable debouncer
        );
        Port (
            -- CLOCK AND RESET
            CLK          : in  std_logic; -- system clock
            RST          : in  std_logic; -- high active synchronous reset
            -- UART INTERFACE
            UART_TXD     : out std_logic; -- serial transmit data
            UART_RXD     : in  std_logic; -- serial receive data
            -- USER DATA INPUT INTERFACE
            DIN          : in  std_logic_vector(7 downto 0); -- input data to be transmitted over UART
            DIN_VLD      : in  std_logic; -- when DIN_VLD = 1, input data (DIN) are valid
            DIN_RDY      : out std_logic; -- when DIN_RDY = 1, transmitter is ready and valid input data will be accepted for transmiting
            -- USER DATA OUTPUT INTERFACE
            DOUT         : out std_logic_vector(7 downto 0); -- output data received via UART
            DOUT_VLD     : out std_logic; -- when DOUT_VLD = 1, output data (DOUT) are valid (is assert only for one clock cycle)
            FRAME_ERROR  : out std_logic; -- when FRAME_ERROR = 1, stop bit was invalid (is assert only for one clock cycle)
            PARITY_ERROR : out std_logic  -- when PARITY_ERROR = 1, parity bit was invalid (is assert only for one clock cycle)
        );
    end component;
    
    COMPONENT uart_fifo
        PORT (
            clk : IN STD_LOGIC;
            srst : IN STD_LOGIC;
            din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            wr_en : IN STD_LOGIC;
            rd_en : IN STD_LOGIC;
            dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            full : OUT STD_LOGIC;
            empty : OUT STD_LOGIC;
            valid : OUT STD_LOGIC 
        );
    END COMPONENT;
    
    COMPONENT intensityFIFO
        PORT (
            wr_rst_busy : OUT STD_LOGIC;
            rd_rst_busy : OUT STD_LOGIC;
            s_aclk : IN STD_LOGIC;
            s_aresetn : IN STD_LOGIC;
            s_axis_tvalid : IN STD_LOGIC;
            s_axis_tready : OUT STD_LOGIC;
            s_axis_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            s_axis_tlast : IN STD_LOGIC;
            m_axis_tvalid : OUT STD_LOGIC;
            m_axis_tready : IN STD_LOGIC;
            m_axis_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            m_axis_tlast : OUT STD_LOGIC 
        );
    END COMPONENT;
    
    COMPONENT correlatorFIFO
        PORT (
            wr_rst_busy : OUT STD_LOGIC;
            rd_rst_busy : OUT STD_LOGIC;
            s_aclk : IN STD_LOGIC;
            s_aresetn : IN STD_LOGIC;
            s_axis_tvalid : IN STD_LOGIC;
            s_axis_tready : OUT STD_LOGIC;
            s_axis_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            s_axis_tlast : IN STD_LOGIC;
            m_axis_tvalid : OUT STD_LOGIC;
            m_axis_tready : IN STD_LOGIC;
            m_axis_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            m_axis_tlast : OUT STD_LOGIC
        );
    END COMPONENT;
    
    signal resetHigh : std_logic;
    
    --UART signals
    signal UARTdataIn, UARTdataOut : std_logic_vector(7 downto 0);
    signal UARTdataInValid, UARTdataInReady, UARTdataOutValid : std_logic;
    signal frameError, parityError : std_logic;
    
    constant startCommand : std_logic_vector(7 downto 0) := X"00";
    constant stopCommand : std_logic_vector(7 downto 0) := X"80";
    
    signal startLocal, stopLocal : std_logic := '0';
    
    --FIFO inputs
    signal FIFOdataIn : std_logic_vector(31 downto 0);
    signal FIFOdataInValid : std_logic;
    
    signal mainFIFOFull : std_logic;
begin
    resetHigh <= NOT resetn;

    error <= frameError OR parityError OR mainFIFOFull;
    uart_controller : UART
    generic map(
        CLK_FREQ => 100e6,
        BAUD_RATE => 3_125_000,
        PARITY_BIT => "odd",
        USE_DEBOUNCER => true
    )
    port map(
        CLK => clk,
        RST => resetHigh,
        UART_TXD => UART_TX,
        UART_RXD => UART_RX,
        DIN => UARTdataIn,
        DIN_VLD => UARTdataInValid,
        DIN_RDY => UARTdataInReady, 
        DOUT => UARTdataOut,
        DOUT_VLD => UARTdataOutValid,
        FRAME_ERROR => frameError,
        PARITY_ERROR => parityError
    );
    
    start <= startLocal;
    stop <= stopLocal;
    start_stop : process(clk) begin
        if rising_edge(clk) then
            if resetn = '0' then
                startLocal <= '0';
                stopLocal <= '0';
            else
                if startLocal = '1' then
                    startLocal <= '0';
                end if;
                if stopLocal = '1' then
                    stopLocal <= '0';
                end if;
            
                if UARTdataOutValid = '1' then
                    if UARTdataOut = startCommand then
                        startLocal <= '1';
                    elsif UARTdataOut = stopCommand then
                        stopLocal <= '1';
                    end if;
                end if;
            end if;
        end if;
    end process;
    
    --Reads data from fifo in priority of
    --1-Intensity(0x0000)
    --2-Analyzer outputs(0x00FF)
    --3-Correlation(0xFF00)
    --
    --Scheme for data transmission
    --A header word will be sent with the upper 16 containing info on the following data
    --For intensity the lower 16 bits will contain the intensity
    --For analyzer the lower 16 bits will contain all 0s
    --For correlation the lower 16 will be the correlation length to follow
    aggregator : block
        constant correlationLengthConst : unsigned(15 downto 0) := to_unsigned(correlationLength, 16);
        constant intensityId : std_logic_vector(15 downto 0) := X"0000";
        constant analyzerId : std_logic_vector(15 downto 0) := X"00FF";
        constant correlationId : std_logic_vector(15 downto 0) := X"FF00";
        
        signal intensityFIFOData : std_logic_vector(15 downto 0);
        signal correlationFIFOData : std_logic_vector(31 downto 0);
        signal intensityFIFOValid, correlationFIFOValid, correlationFIFOLast : std_logic;
        signal intensityFIFOReady, analyzerInReadyLocal, correlationFIFOReady : std_logic := '0';
    begin
        analyzerInReady <= analyzerInReadyLocal;
        process(clk) begin
            if rising_edge(clk) then
                if resetn = '0' then
                    intensityFIFOReady <= '0';
                    analyzerInReadyLocal <= '0';
                    correlationFIFOReady <= '0';
                else
                    --Reset when high, can be overridden later in code
                    if FIFOdataInValid = '1' then
                        FIFOdataInValid <= '0';
                    end if;
                    
                    --Reset ready signals
                    if intensityFIFOReady = '1' then
                        intensityFIFOReady <= '0';
                    end if;
                    
                    if intensityFIFOValid = '1' AND analyzerInReadyLocal = '0' AND correlationFIFOReady = '0' then
                        intensityFIFOReady <= '1';
                        
                        FIFOdataIn(31 downto 16) <= intensityId;
                        FIFOdataIn(15 downto 0) <= intensityFIFOData;
                        FIFOdataInValid <= '1';
                    elsif analyzerInValid = '1' AND correlationFIFOReady = '0' then
                        if analyzerInReadyLocal = '0' then
                            analyzerInReadyLocal <= '1';
                            
                            FIFOdataIn(31 downto 16) <= analyzerId;
                            FIFOdataIn(15 downto 0) <= (others => '0');
                            FIFOdataInValid <= '1';
                        else
                            FIFOdataIn <= analyzerIn;
                            FIFOdataInValid <= '1';
                            
                            if analyzerInLast = '1' then
                                analyzerInReadyLocal <= '0';
                            end if;
                        end if;
                    elsif correlationFIFOValid = '1' then                        
                        if correlationFIFOReady = '0' then
                            correlationFIFOReady <= '1';
                            
                            FIFOdataIn(31 downto 16) <= correlationId;
                            FIFOdataIn(15 downto 0) <= std_logic_vector(correlationLengthConst);
                            FIFOdataInValid <= '1';
                        else
                            FIFOdataIn <= correlationFIFOData;
                            FIFOdataInValid <= '1';
                            
                            if correlationFIFOLast = '1' then
                                correlationFIFOReady <= '0';
                            end if;
                        end if;
                    end if;
                end if;
            end if;
        end process;
        
        intensity_fifo : intensityFIFO
        PORT MAP (
            wr_rst_busy => open,
            rd_rst_busy => open,
            s_aclk => clk,
            s_aresetn => resetn,
            s_axis_tvalid => intensityInValid,
            s_axis_tready => open,
            s_axis_tdata => intensityIn,
            s_axis_tlast => '0',
            m_axis_tvalid => intensityFIFOValid,
            m_axis_tready => intensityFIFOReady,
            m_axis_tdata => intensityFIFOData,
            m_axis_tlast => open
        );
        
        correlation_fifo : correlatorFIFO
        PORT MAP (
            wr_rst_busy => open,
            rd_rst_busy => open,
            s_aclk => clk,
            s_aresetn => resetn,
            s_axis_tvalid => correlationInValid,
            s_axis_tready => open,
            s_axis_tdata => correlationIn,
            s_axis_tlast => correlationInLast,
            m_axis_tvalid => correlationFIFOValid,
            m_axis_tready => correlationFIFOReady,
            m_axis_tdata => correlationFIFOData,
            m_axis_tlast => correlationFIFOLast
        );
    end block;
    
    main_fifo : uart_fifo
    PORT MAP (
        clk => clk,
        srst => resetHigh,
        din => FIFOdataIn,
        wr_en => FIFOdataInValid,
        full => mainFIFOFull,
        empty => open,
        dout => UARTdataIn,
        rd_en => UARTdataInReady,
        valid => UARTdataInValid
    );
end Behavioral;
