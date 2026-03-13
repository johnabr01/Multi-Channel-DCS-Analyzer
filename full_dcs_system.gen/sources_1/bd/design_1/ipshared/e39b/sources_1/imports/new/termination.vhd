library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity termination is
    Generic(
        --Size of the iteration count in bits
        bitsForIterationCount : positive := 12
    );
    Port(
        --Clk + rst
        aclk : in STD_LOGIC;
        aresetn : in STD_LOGIC;
        
        percentDifferenceThreshold : in STD_LOGIC_VECTOR (31 downto 0);
        iterationThreshold : in unsigned (bitsForIterationCount - 1 downto 0);
        
        bestMSEValue, worstMSEValue : in STD_LOGIC_VECTOR (31 downto 0);
        numIterations : in unsigned (bitsForIterationCount - 1 downto 0);
        
        inputValid : in STD_LOGIC;
        inputReady : out STD_LOGIC;
        
        shouldTerminateIteration : out STD_LOGIC;
        shouldTerminatePercentDiff : out STD_LOGIC;
        shouldTerminateMSEZero : out STD_LOGIC;
        shouldTerminateValid : out STD_LOGIC
    );
end termination;

architecture Behavioral of termination is
    signal inputReadyLocal : std_logic := '1';
    signal shouldTerminateIterationLocal, shouldTerminatePercentDiffLocal, shouldTerminateIterationValidLocal, shouldTerminateZeroLocal, shouldTerminateZeroValidLocal : std_logic := '0';
    
    signal percentDiffInBest, percentDiffInWorst, storedPercentDiffThresh : std_logic_vector(31 downto 0) := (others => '0');
    signal percentDiffInValid, belowTermThresh, belowTermThreshValid : std_logic := '0';
begin
    inputReady <= inputReadyLocal OR belowTermThreshValid;
    shouldTerminateValid <= shouldTerminateIterationValidLocal OR belowTermThreshValid OR shouldTerminateZeroValidLocal;
    shouldTerminateIteration <= shouldTerminateIterationLocal when shouldTerminateIterationValidLocal = '1' else
                                '0';
    shouldTerminatePercentDiff <= shouldTerminatePercentDiffLocal when belowTermThreshValid = '1' else
                                '0';
    shouldTerminateMSEZero <= shouldTerminateZeroLocal when shouldTerminateZeroValidLocal = '1' else
                                '0';

    process(aclk) begin
        if rising_edge(aclk) then
            if aresetn = '0' then
                shouldTerminateIterationValidLocal <= '0';
                shouldTerminateZeroValidLocal <= '0';
                inputReadyLocal <= '1';
                percentDiffInValid <= '0';
            else
                if shouldTerminateIterationValidLocal = '1' then
                    shouldTerminateIterationValidLocal <= '0';
                end if;
                if shouldTerminateZeroValidLocal = '1' then
                    shouldTerminateZeroValidLocal <= '0';
                end if;
                if percentDiffInValid = '1' then
                    percentDiffInValid <= '0';
                end if;
            
                if inputValid = '1' AND inputReadyLocal = '1' then
                    inputReadyLocal <= '0';
                
                    if bestMSEValue = (bestMSEValue'RANGE => '0') then
                        shouldTerminateZeroLocal <= '1';
                        shouldTerminateZeroValidLocal <= '1';
                        
                        inputReadyLocal <= '1';
                    elsif numIterations >= iterationThreshold then
                        shouldTerminateIterationLocal <= '1';
                        shouldTerminateIterationValidLocal <= '1';
                        
                        inputReadyLocal <= '1';
                    else
                        --Do % difference calculation
                        percentDiffInBest <= bestMSEValue;
                        percentDiffInWorst <= worstMSEValue;
                        percentDiffInValid <= '1';
                        
                        storedPercentDiffThresh <= percentDifferenceThreshold;
                    end if;
                end if;
                
                if belowTermThreshValid = '1' then
                    inputReadyLocal <= '1';
                end if;
            end if;
        end if;
    end process;
    
    --Block to perform (worst - best) < threshold * best
    percentDiffTerm : block
        COMPONENT subtract_single_float
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
        
        COMPONENT multiply_single_float
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
        
        COMPONENT compare_less_than_float
          PORT (
            aclk : IN STD_LOGIC;
            aresetn : IN STD_LOGIC;
            s_axis_a_tvalid : IN STD_LOGIC;
            s_axis_a_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            s_axis_b_tvalid : IN STD_LOGIC;
            s_axis_b_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            m_axis_result_tvalid : OUT STD_LOGIC;
            m_axis_result_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) 
          );
        END COMPONENT;
        
        signal subtractResult, multResult : std_logic_vector(31 downto 0);
        signal compareRawOut : std_logic_vector(7 downto 0);
        signal subtractResultValid, multResultValid : std_logic;
    begin
        subtract : subtract_single_float
        PORT MAP (
            aclk => aclk,
            aresetn => aresetn,
            s_axis_a_tvalid => percentDiffInValid,
            s_axis_a_tdata => percentDiffInWorst,
            s_axis_a_tlast => '0',
            s_axis_b_tvalid => percentDiffInValid,
            s_axis_b_tdata => percentDiffInBest,
            m_axis_result_tvalid => subtractResultValid,
            m_axis_result_tdata => subtractResult,
            m_axis_result_tlast => open
        );
        
        multiply : multiply_single_float
        PORT MAP (
            aclk => aclk,
            aresetn => aresetn,
            s_axis_a_tvalid => percentDiffInValid,
            s_axis_a_tdata => storedPercentDiffThresh,
            s_axis_a_tlast => '0',
            s_axis_b_tvalid => percentDiffInValid,
            s_axis_b_tdata => percentDiffInBest,
            m_axis_result_tvalid => multResultValid,
            m_axis_result_tdata => multResult,
            m_axis_result_tlast => open
        );
        
        less_than_compare : compare_less_than_float
        PORT MAP (
            aclk => aclk,
            aresetn => aresetn,
            s_axis_a_tvalid => subtractResultValid,
            s_axis_a_tdata => subtractResult,
            s_axis_b_tvalid => multResultValid,
            s_axis_b_tdata => multResult,
            m_axis_result_tvalid => belowTermThreshValid,
            m_axis_result_tdata => compareRawOut
        );
        
        shouldTerminatePercentDiffLocal <= compareRawOut(0);
    end block;
end Behavioral;
