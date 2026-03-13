library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.neldermead_record.all;

entity sorter is
    port(
        --Clk + rst
        aclk : in std_logic;
        aresetn : in std_logic;
        
        worstPointIn : in point_pair_mse_t;
        goodPointIn : in point_pair_mse_t;
        bestPointIn : in point_pair_mse_t;
        inputPointsValid : in std_logic;
        inputPointsReady : out std_logic;
        
        worstPointOut : out point_pair_mse_t;
        goodPointOut : out point_pair_mse_t;
        bestPointOut : out point_pair_mse_t;
        bestPointChanged : out std_logic;
        outputPointsValid : out std_logic
    );
end sorter;

architecture Behavioral of sorter is
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
    
    signal compRawResult : STD_LOGIC_VECTOR(7 downto 0);
    alias compResultALessThanB is compRawResult(0);
    signal compInputA, compInputB : STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal compInputsValid, compResultValid : STD_LOGIC;

    --Stored points
    signal worst, good, best : point_pair_mse_t;
    
    --Out refers to the data going to the comparator, in refers to the result coming back.
    type sortStates is (lowerOut, upperOut, outerOutLowerIn, upperIn, outerIn);
    signal sortState : sortStates := lowerOut;
    
    signal lowerResult : std_logic := '0';
    
    signal inputPointsReadyLocal : std_logic := '0';
begin
    inputPointsReady <= inputPointsReadyLocal;
    inputPointsReadyLocal <= '1' when sortState = lowerOut else '0';

    process(aclk) begin
        if rising_edge(aclk) then
            if aresetn = '0' then
                sortState <= lowerOut;
                compInputsValid <= '0';
                outputPointsValid <= '0';
            else
                --Inputting points
                case sortState is
                    when lowerOut =>
                        --Set the outputValid signal low for when the output is finished
                        outputPointsValid <= '0';
                        
                        if inputPointsValid = '1' then
                            --Store points in intenal registers for future comparisons
                            worst <= worstPointIn;
                            good <= goodPointIn;
                            best <= bestPointIn;
                            
                            --Compare points 1 and 2
                            compInputA <= worstPointIn.mse;
                            compInputB <= goodPointIn.mse;
                            compInputsValid <= '1';
                            
                            sortState <= upperOut;
                        end if;
                    when upperOut =>
                        --Compare points 2 and 3
                        compInputA <= good.mse;
                        compInputB <= best.mse;
                        compInputsValid <= '1';                        
                            
                        sortState <= outerOutLowerIn;
                    when outerOutLowerIn =>
                        --Compare points 1 and 3
                        compInputA <= worst.mse;
                        compInputB <= best.mse;
                        compInputsValid <= '1';
                        
                        --This comparison result is assumed to be valid with a 1-clock
                        --latency for the comparator
                        lowerResult <= compResultALessThanB;
                        
                        sortState <= upperIn;
                    when upperIn =>
                        compInputsValid <= '0';
                    
                        --This comparison result is assumed to be valid with a 1-clock
                        --latency for the comparator
                        if compResultALessThanB = lowerResult then
                            --If this comparison result is equal to the lowerResult, short-circuit
                            --The module can output its result immediately 
                            outputPointsValid <= '1';
                            if lowerResult = '1' then
                                worstPointOut <= best;
                                goodPointOut <= good;
                                bestPointOut <= worst;
                                
                                bestPointChanged <= '1';
                            else
                                worstPointOut <= worst;
                                goodPointOut <= good;
                                bestPointOut <= best;
                                
                                bestPointChanged <= '0';
                            end if;
                            
                            --Move back to the initial state
                            sortState <= lowerOut;
                        else
                            sortState <= outerIn;
                        end if;
                    when outerIn =>
                        --All comparisons are done, a sort decision can be made
                        outputPointsValid <= '1';
                        if lowerResult = '1' then
                            worstPointOut <= good;
                            
                            if compResultALessThanB = '1' then
                                goodPointOut <= best;
                                bestPointOut <= worst;
                                
                                bestPointChanged <= '1';
                            else
                                goodPointOut <= worst;
                                bestPointOut <= best;
                                
                                bestPointChanged <= '0';
                            end if;
                        else
                            bestPointOut <= good;
                            bestPointChanged <= '1';
                            
                            if compResultALessThanB = '1' then
                                worstPointOut <= best;
                                goodPointOut <= worst;
                            else
                                worstPointOut <= worst;
                                goodPointOut <= best;
                            end if;
                        end if;
                        
                        sortState <= lowerOut;
                end case;
            end if;
        end if;
    end process;
    
    lessThanCompare : compare_less_than_float
    port map (
        aclk => aclk,
        aresetn => aresetn,
        s_axis_a_tvalid => compInputsValid,
        s_axis_a_tdata => compInputA,
        s_axis_b_tvalid => compInputsValid,
        s_axis_b_tdata => compInputB,
        m_axis_result_tvalid => compResultValid,
        m_axis_result_tdata => compRawResult
    );
end Behavioral;
