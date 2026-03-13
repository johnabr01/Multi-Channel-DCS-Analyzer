library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mse_accumulator is
    Port (
        --Clk + rst
        aclk : in STD_LOGIC;
        aresetn : in STD_LOGIC;

        --Inputs
        g2In : in STD_LOGIC_VECTOR (31 downto 0);
        g2eIn : in STD_LOGIC_VECTOR (31 downto 0);
        inputValid : in std_logic;
        inputLast : in std_logic;

        --Outputs
        output : out STD_LOGIC_VECTOR (31 downto 0);
        outputValid : out STD_LOGIC;
        outputLast : out std_logic
    );
end mse_accumulator;

architecture Behavioral of mse_accumulator is
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
    
    COMPONENT accum_single_float
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
    
    signal subtractResult, squareResult : std_logic_vector(31 downto 0);
    signal subtractResultValid, subtractResultLast, squareResultValid, squareResultLast : std_logic;
begin
    subtract : subtract_single_float
    PORT MAP (
        aclk => aclk,
        aresetn => aresetn,
        s_axis_a_tvalid => inputValid,
        s_axis_a_tdata => g2In,
        s_axis_a_tlast => inputLast,
        s_axis_b_tvalid => inputValid,
        s_axis_b_tdata => g2eIn,
        m_axis_result_tvalid => subtractResultValid,
        m_axis_result_tdata => subtractResult,
        m_axis_result_tlast => subtractResultLast
    );
    
    square : multiply_single_float
    PORT MAP (
        aclk => aclk,
        aresetn => aresetn,
        s_axis_a_tvalid => subtractResultValid,
        s_axis_a_tdata => subtractResult,
        s_axis_a_tlast => subtractResultLast,
        s_axis_b_tvalid => subtractResultValid,
        s_axis_b_tdata => subtractResult,
        m_axis_result_tvalid => squareResultValid,
        m_axis_result_tdata => squareResult,
        m_axis_result_tlast => squareResultLast
    );
    
    accumulator : accum_single_float
    PORT MAP (
        aclk => aclk,
        aresetn => aresetn,
        s_axis_a_tvalid => squareResultValid,
        s_axis_a_tdata => squareResult,
        s_axis_a_tlast => squareResultLast,
        m_axis_result_tvalid => outputValid,
        m_axis_result_tdata => output,
        m_axis_result_tlast => outputLast
    );
end Behavioral;
