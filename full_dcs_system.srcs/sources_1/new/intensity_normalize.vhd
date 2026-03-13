library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity intensity_normalize is
    Generic (
        countSize : positive := 8;
        numCombiners : positive
    );
    Port (
        clk : in STD_LOGIC;
        resetn : in STD_LOGIC;
        countIn : in STD_LOGIC_VECTOR(countSize - 1 downto 0);
        countInValid : in STD_LOGIC;
        countInLast : in STD_LOGIC;
        
        inputCorrelation : in STD_LOGIC_VECTOR(31 downto 0);
        inputCorrelationValid : in STD_LOGIC;
        inputCorrelationLast : in STD_LOGIC;
        
        normalizedCorrelation : out STD_LOGIC_VECTOR(31 downto 0);
        normalizedCorrelationValid : out STD_LOGIC;
        normalizedCorrelationLast : out STD_LOGIC
    );
end intensity_normalize;

architecture Behavioral of intensity_normalize is
    COMPONENT single_divide_fast
        PORT (
            aclk : IN STD_LOGIC;
            aresetn : IN STD_LOGIC;
            s_axis_a_tvalid : IN STD_LOGIC;
            s_axis_a_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            s_axis_a_tlast : IN STD_LOGIC;
            s_axis_b_tvalid : IN STD_LOGIC;
            s_axis_b_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            m_axis_result_tvalid : OUT STD_LOGIC;
            m_axis_result_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            m_axis_result_tlast : OUT STD_LOGIC
        );
    END COMPONENT;

    signal countInLastDelayed : std_logic := '0';

    --Accumulations and count
    signal finalAccumulation : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal finalCount : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal finalDataValid : std_logic := '0';
    
    --Conversions to floats
    signal floatAccum, floatCount : std_logic_vector(31 downto 0);
    signal floatAccumValid, floatCountValid : std_logic;
    
    signal intensityDivideResult : STD_LOGIC_VECTOR(31 downto 0);
    signal intensityDivideResultValid : std_logic;
    
    signal storedSquareResult : STD_LOGIC_VECTOR(31 downto 0);
    signal storedSquareResultValid : std_logic;
    
    signal delayedCorrelation : std_logic_vector(31 downto 0);
    signal delayedCorrelationValid, delayedCorrelationLast : std_logic;
begin
    accumulateAndCount : block
        signal accumulation : unsigned(finalAccumulation'RANGE) := (others => '0');
        signal count : unsigned(finalCount'RANGE) := (others => '0');
    begin
        process(clk) begin
            if rising_edge(clk) then
                if resetn = '0' OR countInLastDelayed = '1' then
                    accumulation <= (others => '0');
                    count <= (others => '0');
                else
                    if countInValid = '1' then
                        accumulation <= accumulation + unsigned(countIn);
                        count <= count + 1;
                    end if;
                end if;
            end if;
        end process;
        
        calculation_input : process(clk) begin
            if rising_edge(clk) then
                if finalDataValid = '1' then
                    finalDataValid <= '0';
                end if;
            
                if resetn = '0' then
                    countInLastDelayed <= '0';
                
                    finalAccumulation <= (others => '0');
                    finalCount <= (others => '0');
                else
                    countInLastDelayed <= countInLast;
                    if countInLastDelayed = '1' then
                        finalAccumulation <= std_logic_vector(accumulation);
                        finalCount <= std_logic_vector(count);
                        finalDataValid <= '1';
                    end if;
                end if;
            end if;
        end process;
    end block;
    
    intensity_squared : block
        COMPONENT uint32_to_single
            PORT (
                aclk : IN STD_LOGIC;
                aresetn : IN STD_LOGIC;
                s_axis_a_tvalid : IN STD_LOGIC;
                s_axis_a_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
                m_axis_result_tvalid : OUT STD_LOGIC;
                m_axis_result_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0) 
            );
        END COMPONENT;
        
        COMPONENT single_multiply
            PORT (
                aclk : IN STD_LOGIC;
                aresetn : IN STD_LOGIC;
                s_axis_a_tvalid : IN STD_LOGIC;
                s_axis_a_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
                s_axis_b_tvalid : IN STD_LOGIC;
                s_axis_b_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
                m_axis_result_tvalid : OUT STD_LOGIC;
                m_axis_result_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
            );
        END COMPONENT;
        
        signal squareResult : STD_LOGIC_VECTOR(31 downto 0);
        signal squareResultValid : std_logic;
    begin
        to_float_accum : uint32_to_single
        PORT MAP (
            aclk => clk,
            aresetn => resetn,
            s_axis_a_tvalid => finalDataValid,
            s_axis_a_tdata => finalAccumulation,
            m_axis_result_tvalid => floatAccumValid,
            m_axis_result_tdata => floatAccum
        );
        
        to_float_count : uint32_to_single
        PORT MAP (
            aclk => clk,
            aresetn => resetn,
            s_axis_a_tvalid => finalDataValid,
            s_axis_a_tdata => finalCount,
            m_axis_result_tvalid => floatCountValid,
            m_axis_result_tdata => floatCount
        );
        
        square : single_multiply
        PORT MAP (
            aclk => clk,
            aresetn => resetn,
            s_axis_a_tvalid => intensityDivideResultValid,
            s_axis_a_tdata => intensityDivideResult,
            s_axis_b_tvalid => intensityDivideResultValid,
            s_axis_b_tdata => intensityDivideResult,
            m_axis_result_tvalid => squareResultValid,
            m_axis_result_tdata => squareResult
        );
        
        process(clk) begin
            if rising_edge(clk) then
                if resetn = '0' then
                    storedSquareResultValid <= '0';
                else
                    --Store square result
                    if squareResultValid = '1' then
                        storedSquareResult <= squareResult;
                        storedSquareResultValid <= '1';
                    end if;
                
                    --On the last correlation point, next square result can come in
                    if delayedCorrelationLast = '1' then
                        storedSquareResultValid <= '0';
                    end if;
                end if;
            end if;
        end process;
    end block;
    
    divider_sharing : block
        signal dividerNumeratorIn, dividerDenomIn, dividerOut : std_logic_vector(31 downto 0);
        signal dividerInputValid, dividerInputLast, dividerOutValid, dividerOutLast : std_logic := '0';
        
        signal accumAndCountInDone, accumAndCountOutDone, accumAndCountValid : std_logic := '0';
    begin
        accumAndCountValid <= floatAccumValid AND floatCountValid;
    
        input : process(clk) begin
            if rising_edge(clk) then
                if resetn = '0' then
                    dividerInputValid <= '0';
                    dividerInputLast <= '0';
                    
                    accumAndCountInDone <= '0';
                else
                    if accumAndCountInDone = '0' then
                        --When
                        dividerNumeratorIn <= floatAccum;
                        dividerDenomIn <= floatCount;
                        dividerInputValid <= accumAndCountValid;
                        dividerInputLast <= '0';
                        
                        if accumAndCountValid = '1' then
                            accumAndCountInDone <= '1';
                        end if;
                    else
                        dividerNumeratorIn <= delayedCorrelation;
                        dividerDenomIn <= storedSquareResult;
                        dividerInputValid <= delayedCorrelationValid AND storedSquareResultValid;
                        dividerInputLast <= delayedCorrelationLast;
                        
                        if delayedCorrelationLast = '1' then
                            accumAndCountInDone <= '0';
                        end if;
                    end if;
                end if;
            end if;
        end process;
        
        output : process(clk) begin
            if rising_edge(clk) then
                if resetn = '0' then
                    normalizedCorrelationValid <= '0';
                    normalizedCorrelationLast <= '0';
                    intensityDivideResultValid <= '0';
                    
                    accumAndCountOutDone <= '0';
                else
                    --These outputs must be driven low when not being
                    --drive by the divider output
                    intensityDivideResultValid <= '0';
                    normalizedCorrelationValid <= '0';
                    normalizedCorrelationLast <= '0';
                
                    if accumAndCountOutDone = '0' then
                        intensityDivideResult <= dividerOut;
                        intensityDivideResultValid <= dividerOutValid;
                        
                        if dividerOutValid = '1' then
                            accumAndCountOutDone <= '1';
                        end if;
                    else
                        normalizedCorrelation <= dividerOut;
                        normalizedCorrelationValid <= dividerOutValid;
                        normalizedCorrelationLast <= dividerOutLast;
                        
                        if dividerOutLast = '1' then
                            accumAndCountOutDone <= '0';
                        end if;
                    end if;
                end if;
            end if;
        end process;
        
        shared_divider : single_divide_fast
        PORT MAP (
            aclk => clk,
            aresetn => resetn,
            s_axis_a_tvalid => dividerInputValid,
            s_axis_a_tdata => dividerNumeratorIn,
            s_axis_a_tlast => dividerInputLast,
            s_axis_b_tvalid => dividerInputValid,
            s_axis_b_tdata => dividerDenomIn,
            m_axis_result_tvalid => dividerOutValid,
            m_axis_result_tdata => dividerOut,
            m_axis_result_tlast => dividerOutLast
        );
    end block;
    
    --Correlation needs to be delayed to 22 cycles
    --greater than the last count
    correlation_delay : block
        component shift_register is
          generic (
            sr_depth : positive;
            sr_width : positive
          );
          port (
            clk : in std_logic;
            resetn : in std_logic;
         
            sr_in : in std_logic_vector(sr_width - 1 downto 0);
            sr_out : out std_logic_vector(sr_width - 1 downto 0)
          );
        end component shift_register;
        
        function delayFromCombiners(numCombiners : positive) return natural is
            variable intermediate : integer;
        begin
            intermediate := 22 - (numCombiners + 15);
            if intermediate < 0 then
                intermediate := 0;
            end if;
            return intermediate;
        end function;
        
        constant delayAmount : natural := delayFromCombiners(numCombiners);
    begin
        genDelayer : if delayAmount > 0 generate
            delayer : shift_register
            generic map(
                --15 is latency when numCombiners = 0
                --Each numCombiners adds 1
                sr_depth => delayAmount,
                --Using 31 downto 0 bits for correlation, 32 for valid, 33 for last
                sr_width => inputCorrelation'LENGTH + 2
            )
            port map(
                clk => clk,
                resetn => resetn,
                sr_in(33) => inputCorrelationLast,
                sr_in(32) => inputCorrelationValid,
                sr_in(inputCorrelation'RANGE) => inputCorrelation,
                sr_out(33) => delayedCorrelationLast,
                sr_out(32) => delayedCorrelationValid,
                sr_out(inputCorrelation'RANGE) => delayedCorrelation
            );
        end generate;
        
        noGenDelayer : if delayAmount = 0 generate
            delayedCorrelation <= inputCorrelation;
            delayedCorrelationValid <= inputCorrelationValid;
            delayedCorrelationLast <= inputCorrelationLast;
        end generate;
    end block;
end Behavioral;
