library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--Fully pipelined module with latency of 18
entity exponential_pipe is
    Port (
        --Clk + rst
        aclk : in STD_LOGIC;
        aresetn : in STD_LOGIC;
        
        --Inputs
        rInNeg : in STD_LOGIC_VECTOR (31 downto 0);
        sqrtIn : in STD_LOGIC_VECTOR (31 downto 0);
        rHReciprocal : in STD_LOGIC_VECTOR (31 downto 0);
        inputValid : in std_logic;
        inputLast : in std_logic;
        
        --Outputs
        output : out STD_LOGIC_VECTOR (31 downto 0);
        outputValid : out STD_LOGIC;
        outputLast : out STD_LOGIC
    );
end exponential_pipe;

architecture Behavioral of exponential_pipe is
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

    COMPONENT exponential_single_float
        PORT (
            aclk : IN STD_LOGIC;
            aresetn : IN STD_LOGIC;
            s_axis_a_tvalid : IN STD_LOGIC;
            s_axis_a_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            s_axis_a_tlast : IN STD_LOGIC;
            m_axis_result_tvalid : OUT STD_LOGIC;
            m_axis_result_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            m_axis_result_tlast : OUT STD_LOGIC
        );
    END COMPONENT;
    
    --Product of sqrt and R inputs
    signal sqrtRProduct : STD_LOGIC_VECTOR(31 downto 0);
    signal sqrtRProductValid, sqrtRProductLast : STD_LOGIC;
    
    --Exponent result
    signal exponentResult : STD_LOGIC_VECTOR(31 downto 0);
    signal exponentResultValid, exponentResultLast : STD_LOGIC;
begin
    pre_exp_multiply : multiply_single_float
    PORT MAP (
        aclk => aclk,
        aresetn => aresetn,
        s_axis_a_tvalid => inputValid,
        s_axis_a_tdata => rInNeg,
        s_axis_a_tlast => inputLast,
        s_axis_b_tvalid => inputValid,
        s_axis_b_tdata => sqrtIn,
        m_axis_result_tvalid => sqrtRProductValid,
        m_axis_result_tdata => sqrtRProduct,
        m_axis_result_tlast => sqrtRProductLast
    );
    
    exponential : exponential_single_float
    PORT MAP (
        aclk => aclk,
        aresetn => aresetn,
        s_axis_a_tvalid => sqrtRProductValid,
        s_axis_a_tdata => sqrtRProduct,
        s_axis_a_tlast => sqrtRProductLast,
        m_axis_result_tvalid => exponentResultValid,
        m_axis_result_tdata => exponentResult,
        m_axis_result_tlast => exponentResultLast
    );
    
    post_exp_multiply : multiply_single_float
    PORT MAP (
        aclk => aclk,
        aresetn => aresetn,
        s_axis_a_tvalid => exponentResultValid,
        s_axis_a_tdata => exponentResult,
        s_axis_a_tlast => exponentResultLast,
        s_axis_b_tvalid => exponentResultValid,
        s_axis_b_tdata => rHReciprocal,
        m_axis_result_tvalid => outputValid,
        m_axis_result_tdata => output,
        m_axis_result_tlast => outputLast
    );
end Behavioral;
