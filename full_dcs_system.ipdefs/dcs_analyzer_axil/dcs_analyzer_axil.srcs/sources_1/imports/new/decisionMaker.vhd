library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.neldermead_record.all;

entity decisionMaker is
    port(
        --Clk + rst
        aclk : in std_logic;
        aresetn : in std_logic;
        
        --These points should be externally held constant during processing
        worstPointMSEIn : in std_logic_vector(31 downto 0);
        goodPointMSEIn : in std_logic_vector(31 downto 0);
        bestPointMSEIn : in std_logic_vector(31 downto 0);
        
        --Calculated inputs
        reflectMSEIn : in std_logic_vector(31 downto 0);
        reflectMSEValid : in std_logic;
        extendMSEIn : in std_logic_vector(31 downto 0);
        extendMSEValid : in std_logic;
        contractMSEIn : in std_logic_vector(31 downto 0);
        contractMSEValid : in std_logic;
        
        operationOut : out nelderMeadOperation;
        operationOutValid : out std_logic := '0'
    );
end decisionMaker;

architecture Behavioral of decisionMaker is
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

    type states is (
        reset,
        reflectGoodIn,
        bestReflectIn,
        reflectWorstInReflectGoodOut,
        bestReflectOut,
        extendCompIn,
        extendDecision,
        reflectWorstOut,
        contractCompIn,
        contractDecision
    );
    signal currState : states := reflectGoodIn;
    
    signal compInputsValidLocal, reflectedLessThanGood : std_logic := '0';
begin
    compInputsValid <= compInputsValidLocal;

    process(aclk) begin
        if rising_edge(aclk) then
            if aresetn = '0' then
                currState <= reflectGoodIn;
                compInputsValidLocal <= '0';
                operationOutValid <= '0';
            else
                if compInputsValidLocal = '1' then
                    compInputsValidLocal <= '0';
                end if;
                
                case currState is
                    when reflectGoodIn =>
                        if reflectMSEValid = '1' then
                            compInputsValidLocal <= '1';
                            compInputA <= reflectMSEIn;
                            compInputB <= goodPointMSEIn;
                            
                            currState <= bestReflectIn;
                        end if;
                    when bestReflectIn =>
                        compInputsValidLocal <= '1';
                        compInputA <= bestPointMSEIn;
                        compInputB <= reflectMSEIn;
                        
                        currState <= reflectWorstInReflectGoodOut;
                    when reflectWorstInReflectGoodOut =>
                        assert compResultValid = '1';
                        reflectedLessThanGood <= compResultALessThanB;
                        
                        compInputsValidLocal <= '1';
                        compInputA <= reflectMSEIn;
                        compInputB <= worstPointMSEIn;
                        
                        currState <= bestReflectOut;
                    when bestReflectOut =>
                        if reflectedLessThanGood = '1' then
                            if compResultALessThanB = '1' then
                                operationOut <= reflect;
                                operationOutValid <= '1';
                                
                                currState <= reset;
                            else
                                currState <= extendCompIn;
                            end if;
                        else
                            currState <= reflectWorstOut;
                        end if;
                    when extendCompIn =>
                        if extendMSEValid = '1' then
                            compInputsValidLocal <= '1';
                            compInputA <= extendMSEIn;
                            compInputB <= bestPointMSEIn;
                            
                            currState <= extendDecision;
                        end if;
                    when extendDecision =>
                        if compResultValid = '1' then
                            if compResultALessThanB = '1' then
                                operationOut <= extend;
                            else
                                operationOut <= reflect;
                            end if;
                            operationOutValid <= '1';
                            
                            currState <= reset;
                        end if;
                    when reflectWorstOut =>
                        if compResultValid = '1' then
                            if compResultALessThanB = '1' then
                                operationOut <= reflect;
                                operationOutValid <= '1';
                                
                                currState <= reset;
                            else
                                currState <= contractCompIn;
                            end if;
                        end if;
                    when contractCompIn =>
                        if contractMSEValid = '1' then
                            compInputsValidLocal <= '1';
                            compInputA <= contractMSEIn;
                            compInputB <= worstPointMSEIn;
                            
                            currState <= contractDecision;
                        end if;
                    when contractDecision =>
                        if compResultValid = '1' then
                            if compResultALessThanB = '1' then
                                operationOut <= contract;
                            else
                                operationOut <= shrink;
                            end if;
                            operationOutValid <= '1';
                            
                            currState <= reset;
                        end if;
                    when reset =>
                        operationOutValid <= '0';
                        
                        if reflectMSEValid = '0' AND extendMSEValid = '0' AND contractMSEValid = '0' then
                            currState <= reflectGoodIn;
                        end if;
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
