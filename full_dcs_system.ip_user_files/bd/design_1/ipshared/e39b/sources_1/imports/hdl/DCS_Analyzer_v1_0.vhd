library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.logb2Func.all;

entity DCS_Analyzer_v1_0 is
	generic (
		-- Users to add parameters here
        correlation_length : positive := 128;
		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of S_AXI data bus
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		-- Width of S_AXI address bus
		C_S_AXI_ADDR_WIDTH	: integer	:= 11
	);
	port (
		-- Users to add ports here
        interrupt : out std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Global Clock Signal
		S_AXI_ACLK	: in std_logic;
		-- Global Reset Signal. This Signal is Active LOW
		S_AXI_ARESETN	: in std_logic;
		-- Write address (issued by master, acceped by Slave)
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Write channel Protection type. This signal indicates the
    		-- privilege and security level of the transaction, and whether
    		-- the transaction is a data access or an instruction access.
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		-- Write address valid. This signal indicates that the master signaling
    		-- valid write address and control information.
		S_AXI_AWVALID	: in std_logic;
		-- Write address ready. This signal indicates that the slave is ready
    		-- to accept an address and associated control signals.
		S_AXI_AWREADY	: out std_logic;
		-- Write data (issued by master, acceped by Slave) 
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Write strobes. This signal indicates which byte lanes hold
    		-- valid data. There is one write strobe bit for each eight
    		-- bits of the write data bus.    
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		-- Write valid. This signal indicates that valid write
    		-- data and strobes are available.
		S_AXI_WVALID	: in std_logic;
		-- Write ready. This signal indicates that the slave
    		-- can accept the write data.
		S_AXI_WREADY	: out std_logic;
		-- Write response. This signal indicates the status
    		-- of the write transaction.
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		-- Write response valid. This signal indicates that the channel
    		-- is signaling a valid write response.
		S_AXI_BVALID	: out std_logic;
		-- Response ready. This signal indicates that the master
    		-- can accept a write response.
		S_AXI_BREADY	: in std_logic;
		-- Read address (issued by master, acceped by Slave)
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Protection type. This signal indicates the privilege
    		-- and security level of the transaction, and whether the
    		-- transaction is a data access or an instruction access.
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		-- Read address valid. This signal indicates that the channel
    		-- is signaling valid read address and control information.
		S_AXI_ARVALID	: in std_logic;
		-- Read address ready. This signal indicates that the slave is
    		-- ready to accept an address and associated control signals.
		S_AXI_ARREADY	: out std_logic;
		-- Read data (issued by slave)
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Read response. This signal indicates the status of the
    		-- read transfer.
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		-- Read valid. This signal indicates that the channel is
    		-- signaling the required read data.
		S_AXI_RVALID	: out std_logic;
		-- Read ready. This signal indicates that the master can
    		-- accept the read data and response information.
		S_AXI_RREADY	: in std_logic
	);
end DCS_Analyzer_v1_0;

architecture arch_imp of DCS_Analyzer_v1_0 is
    component analyzer is
        Generic (
            correlationDelays : positive := 80
        );
        Port (
            --Clk + rst
            aclk : in STD_LOGIC;
            aresetn : in STD_LOGIC;
            
            --Internal register access
            controlRegIn : in std_logic_vector (31 downto 0);
            controlRegInEnable : in std_logic;
            controlRegOut : out std_logic_vector (31 downto 0);
            
            worstAlphaDbIn : in std_logic_vector (31 downto 0);
            goodAlphaDbIn : in std_logic_vector (31 downto 0);
            bestAlphaDbIn : in std_logic_vector (31 downto 0);
            worstBetaIn : in std_logic_vector (31 downto 0);
            goodBetaIn : in std_logic_vector (31 downto 0);
            bestBetaIn : in std_logic_vector (31 downto 0);
            worstAlphaDbEnable : in std_logic;
            goodAlphaDbEnable : in std_logic;
            bestAlphaDbEnable : in std_logic;
            worstBetaEnable : in std_logic;
            goodBetaEnable : in std_logic;
            bestBetaEnable : in std_logic;
            worstAlphaDbOut : out std_logic_vector (31 downto 0);
            goodAlphaDbOut : out std_logic_vector (31 downto 0);
            bestAlphaDbOut : out std_logic_vector (31 downto 0);
            worstBetaOut : out std_logic_vector (31 downto 0);
            goodBetaOut : out std_logic_vector (31 downto 0);
            bestBetaOut : out std_logic_vector (31 downto 0);
            
            --Threshold parameters should be held constant during operation
            iterationThreshold : in std_logic_vector (11 downto 0);
            percentDifferenceThreshold : in std_logic_vector (31 downto 0);
            
            doneInterrupt : out std_logic := '0';
            finalMSE : out std_logic_vector(31 downto 0);
            
            --BTau Memory write interface
            BTauWrite : in STD_LOGIC_VECTOR (31 downto 0);
            BTauAddr : in STD_LOGIC_VECTOR (logb2(correlationDelays) - 1 downto 0);
            BTauWriteEnable : in std_logic;--Write to BTau memory when inputReady is high
            
            --g2e Memory write interface
            g2eWrite : in STD_LOGIC_VECTOR (31 downto 0);
            g2eAddr : in STD_LOGIC_VECTOR (logb2(correlationDelays) - 1 downto 0);
            g2eWriteEnable : in std_logic;
            
            --MSE parameters should be held constant during operation
            AConst : in STD_LOGIC_VECTOR (31 downto 0);
            r1InNeg : in STD_LOGIC_VECTOR (31 downto 0);
            rbInNeg : in STD_LOGIC_VECTOR (31 downto 0);
            r1HReciprocal : in STD_LOGIC_VECTOR (31 downto 0);
            rbHReciprocal : in STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;

	-- AXI4LITE signals
	signal axi_awready	: std_logic := '1';
	signal axi_wready	: std_logic := '1';
	signal axi_bvalid	: std_logic := '0';
	signal axi_arready	: std_logic := '0';
	signal axi_rvalid	: std_logic := '0';
	
	signal wdata : std_logic_vector(S_AXI_WDATA'RANGE);
	
	constant ADDR_LSB  : integer := (C_S_AXI_DATA_WIDTH/32)+ 1;
	
    --Analyzer raw control signals
	signal controlRegOut, worstAlphaDbOut, goodAlphaDbOut, bestAlphaDbOut,
	   worstBetaOut, goodBetaOut, bestBetaOut, finalMSE : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal controlRegWE, worstAlphaDbWE, goodAlphaDbWE, bestAlphaDbWE,
	   worstBetaWE, goodBetaWE, bestBetaWE, BTauWE, g2eWE : std_logic;
	   
	--RAM signals
	constant ramAddrOffset : positive := 15;
	constant ramAddrSize : positive := logb2(correlation_length);
	signal BTauAddr, g2eAddr : STD_LOGIC_VECTOR(ramAddrSize - 1 downto 0);
	
	signal AConst, r1InNeg, rbInNeg, r1HReciprocal, rbHReciprocal,
	   percentDifferenceThreshold : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal iterationThreshold : std_logic_vector(11 downto 0);
begin
    S_AXI_AWREADY	<= axi_awready;
	S_AXI_WREADY	<= axi_wready;
	S_AXI_BRESP		<= "00";
	S_AXI_BVALID	<= axi_bvalid;
	S_AXI_ARREADY	<= axi_arready;
	S_AXI_RRESP		<= "00";
	S_AXI_RVALID	<= axi_rvalid;
	
	reading : block
	   signal pre_raddr, rd_addr : std_logic_vector(S_AXI_ARADDR'RANGE) := (others => '0');
	   signal rd_addr_int : integer;
	   signal valid_read_request, read_response_stall : std_logic;
	begin
        valid_read_request <= S_AXI_ARVALID OR NOT axi_arready;
        read_response_stall <= axi_rvalid AND NOT S_AXI_RREADY;
        
        rd_addr_int <= to_integer(unsigned(rd_addr(rd_addr'HIGH downto ADDR_LSB)));
    
        --The read response channel valid signal
        process (S_AXI_ACLK)
        begin
            if rising_edge(S_AXI_ACLK) then 
                if S_AXI_ARESETN = '0' then
                    axi_rvalid <= '0';
                else
                    if read_response_stall = '1' OR valid_read_request = '1' then
                        --Stay valid as long as return path is stalled 
                        axi_rvalid <= '1';
                    else
                        axi_rvalid <= '0';
                    end if;
                end if;
            end if;
        end process;
	
        --Address buffering
        process (S_AXI_ACLK)
        begin
            if rising_edge(S_AXI_ACLK) then 
                if axi_arready = '1' then
                    pre_raddr <= S_AXI_ARADDR;
                end if;
            end if;
        end process;
        
        process (axi_arready, pre_raddr, S_AXI_ARADDR)
        begin
            if (axi_arready = '0') then
                rd_addr <= pre_raddr;
            else
                rd_addr <= S_AXI_ARADDR;
            end if;
        end process;
        
        --Reading the data
        process (S_AXI_ACLK)
        begin
            if rising_edge(S_AXI_ACLK) then 
                if read_response_stall = '0' AND valid_read_request = '1' then
                    case rd_addr_int is
                      when 0 =>
                        S_AXI_RDATA <= controlRegOut;
                      when 1 =>
                        S_AXI_RDATA <= AConst;
                      when 2 =>
                        S_AXI_RDATA <= r1InNeg;
                      when 3 =>
                        S_AXI_RDATA <= rbInNeg;
                      when 4 =>
                        S_AXI_RDATA <= r1HReciprocal;
                      when 5 =>
                        S_AXI_RDATA <= rbHReciprocal;
                      when 6 =>
                        S_AXI_RDATA(iterationThreshold'RANGE) <= iterationThreshold;
                        S_AXI_RDATA(S_AXI_RDATA'HIGH downto iterationThreshold'HIGH + 1) <= (others => '0');
                      when 7 =>
                        S_AXI_RDATA <= percentDifferenceThreshold;
                      when 8 =>
                        S_AXI_RDATA <= finalMSE;
                      when 9 =>
                        S_AXI_RDATA <= worstAlphaDbOut;
                      when 10 =>
                        S_AXI_RDATA <= goodAlphaDbOut;
                      when 11 =>
                        S_AXI_RDATA <= bestAlphaDbOut;
                      when 12 =>
                        S_AXI_RDATA <= worstBetaOut;
                      when 13 =>
                        S_AXI_RDATA <= goodBetaOut;
                      when 14 =>
                        S_AXI_RDATA <= bestBetaOut;
                      when others =>
                        S_AXI_RDATA  <= (others => '0');
                    end case;
                end if;
            end if;
        end process;
        
        --Read address channel ready
        process (S_AXI_ACLK)
        begin
            if rising_edge(S_AXI_ACLK) then 
                if S_AXI_ARESETN = '0' then
                    axi_arready <= '1';
                elsif read_response_stall = '1' then
                    --Outgoing channel is stalled
                    --As long as something is already in the buffer,
                    --axi_arready needs to stay low
                    axi_arready <= NOT valid_read_request;
                else
                    axi_arready <= '1';
                end if;
            end if;
        end process;
	end block reading;
	
	writing : block
	   signal pre_waddr, waddr : std_logic_vector(S_AXI_AWADDR'RANGE);
	   signal pre_wdata : std_logic_vector(S_AXI_WDATA'RANGE);
	   
	   signal waddr_int : integer;
	   
	   signal valid_write_address, valid_write_data, write_response_stall, should_write : std_logic;
	begin
        valid_write_address <= S_AXI_AWVALID OR NOT axi_awready;
        valid_write_data <= S_AXI_WVALID OR NOT axi_wready;
        write_response_stall <= axi_bvalid  AND NOT S_AXI_BREADY;
        should_write <= NOT write_response_stall AND valid_write_address AND valid_write_data;
        
        waddr_int <= to_integer(unsigned(waddr(waddr'HIGH downto ADDR_LSB)));
        
        --The write address channel ready signal
        process (S_AXI_ACLK)
        begin
            if rising_edge(S_AXI_ACLK) then 
                if S_AXI_ARESETN = '0' then
                    axi_awready <= '1';
                elsif write_response_stall = '1' then
                    axi_awready <= NOT valid_write_address;
                elsif valid_write_data = '1' then
                    axi_awready <= '1';
                else
                    axi_awready <= NOT valid_write_address;
                end if;
            end if;
        end process;
        
        --The write data channel ready signal
        process (S_AXI_ACLK)
        begin
            if rising_edge(S_AXI_ACLK) then 
                if S_AXI_ARESETN = '0' then
                    axi_wready <= '1';
                elsif write_response_stall = '1' then
                    axi_wready <= NOT valid_write_address;
                elsif valid_write_address = '1' then
                    axi_wready <= '1';
                else
                    axi_wready <= NOT valid_write_data;
                end if;
            end if;
        end process;
        
        buffers : process (S_AXI_ACLK)
        begin
            if rising_edge(S_AXI_ACLK) then
                --Address
                if axi_awready = '1' then
                    pre_waddr <= S_AXI_AWADDR;
                end if;
                
                --Data
                if axi_wready = '1' then
                    pre_wdata <= S_AXI_WDATA;
                end if;
            end if;
        end process;
        
        address : process (axi_awready, pre_waddr, S_AXI_AWADDR) begin
            if axi_awready = '0' then
                waddr <= pre_waddr;
            else
                waddr <= S_AXI_AWADDR;
            end if;
        end process;
        
        strobeAndData : process (axi_wready, pre_wdata, S_AXI_WDATA) begin
            if axi_wready = '0' then
                wdata <= pre_wdata;
            else
                wdata <= S_AXI_WDATA;
            end if;
        end process;
        
        writeDataSync : process (S_AXI_ACLK) begin
            if rising_edge(S_AXI_ACLK) then
                if S_AXI_ARESETN = '0' then
                    AConst <= (others => '0');
                    r1InNeg <= (others => '0');
                    rbInNeg <= (others => '0');
                    r1HReciprocal <= (others => '0');
                    rbHReciprocal <= (others => '0');
                    iterationThreshold <= (others => '0');
                    percentDifferenceThreshold <= (others => '0');
                elsif should_write = '1' then
                    --Write data
                    case waddr_int is
                        when 1 =>
                            AConst <= wdata;
                        when 2 =>
                            r1InNeg <= wdata;
                        when 3 =>
                            rbInNeg <= wdata;
                        when 4 =>
                            r1HReciprocal <= wdata;
                        when 5 =>
                            rbHReciprocal <= wdata;
                        when 6 =>
                            iterationThreshold <= wdata(iterationThreshold'RANGE);
                        when 7 =>
                            percentDifferenceThreshold <= wdata;
                        when others =>
                            --Do nothing when unwritable
                    end case;
                end if;
            end if;
        end process;
        
        --Control write enables for internal analyzer registers and RAM
        writeDataComb : process (waddr_int, should_write)
        begin
            controlRegWE <= '0';
            worstAlphaDbWE <= '0';
            goodAlphaDbWE <= '0';
            bestAlphaDbWE <= '0';
            worstBetaWE <= '0';
            goodBetaWE <= '0';
            bestBetaWE <= '0';
            
            BTauWE <= '0';
            g2eWE <= '0';
            
            if should_write = '1' then
                case waddr_int is
                    when 0 =>
                        controlRegWE <= '1';
                    when 9 =>
                        worstAlphaDbWE <= '1';
                    when 10 =>
                        goodAlphaDbWE <= '1';
                    when 11 =>
                        bestAlphaDbWE <= '1';
                    when 12 =>
                        worstBetaWE <= '1';
                    when 13 =>
                        goodBetaWE <= '1';
                    when 14 =>
                        bestBetaWE <= '1';
                    when others =>
                        if waddr_int >= ramAddrOffset AND waddr_int < ramAddrOffset + correlation_length then
                            BTauWE <= '1';
                        elsif waddr_int >= ramAddrOffset + correlation_length AND waddr_int < ramAddrOffset + correlation_length * 2 then
                            g2eWE <= '1';
                        end if;
                end case;
            end if;
        end process;
        
        --The write response channel valid signal
        process (S_AXI_ACLK)
        begin
            if rising_edge(S_AXI_ACLK) then
                if S_AXI_ARESETN = '0' then
                    axi_bvalid  <= '0';
                elsif valid_write_address = '1' AND valid_write_data = '1' then
                    axi_bvalid  <= '1';
                elsif S_AXI_BREADY = '1' then
                    axi_bvalid  <= '0';
                end if;
            end if;
        end process;
        
        --RAM addresses
        BTauAddr <= std_logic_vector(to_unsigned(waddr_int - ramAddrOffset, ramAddrSize));
        g2eAddr <= std_logic_vector(to_unsigned(waddr_int - ramAddrOffset - correlation_length, ramAddrSize));
	end block writing;

    dcs_analyzer_module : analyzer
    generic map(
        correlationDelays => correlation_length
    )
    port map(
        --Clk + rst
        aclk => S_AXI_ACLK,
        aresetn => S_AXI_ARESETN,
        
        --Internal register access
        controlRegIn => wdata,
        controlRegInEnable => controlRegWE,
        controlRegOut => controlRegOut,
        
        worstAlphaDbIn => wdata,
        goodAlphaDbIn => wdata,
        bestAlphaDbIn => wdata,
        worstBetaIn => wdata,
        goodBetaIn => wdata,
        bestBetaIn => wdata,
        worstAlphaDbEnable => worstAlphaDbWE,
        goodAlphaDbEnable => goodAlphaDbWE,
        bestAlphaDbEnable => bestAlphaDbWE,
        worstBetaEnable => worstBetaWE,
        goodBetaEnable => goodBetaWE,
        bestBetaEnable => bestBetaWE,
        worstAlphaDbOut => worstAlphaDbOut,
        goodAlphaDbOut => goodAlphaDbOut,
        bestAlphaDbOut => bestAlphaDbOut,
        worstBetaOut => worstBetaOut,
        goodBetaOut => goodBetaOut,
        bestBetaOut => bestBetaOut,
        
        --Threshold parameters should be held constant during operation
        iterationThreshold => iterationThreshold,
        percentDifferenceThreshold => percentDifferenceThreshold,
        
        finalMSE => finalMSE,
        
        doneInterrupt => interrupt,
        
        --BTau Memory write interface
        BTauWrite => wdata,
        BTauAddr => BTauAddr,
        BTauWriteEnable => BTauWE,
        
        --g2e Memory write interface
        g2eWrite => wdata,
        g2eAddr => g2eAddr,
        g2eWriteEnable => g2eWE,
        
        --MSE parameters should be held constant during operation
        AConst => AConst,
        r1InNeg => r1InNeg,
        rbInNeg => rbInNeg,
        r1HReciprocal => r1HReciprocal,
        rbHReciprocal => rbHReciprocal
    );
end arch_imp;
