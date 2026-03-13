library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--Fully pipelined module with latency of 16
entity sqrt_pipe is
    Port (
        --Clk + rst
        aclk : in std_logic;
        aresetn : in std_logic;--Must be driven down for a min of 2 clocks; Clock after rst is deasserted cannot be used
        
        --Inputs
        alphaDb : in STD_LOGIC_VECTOR (31 downto 0);
        BTau : in STD_LOGIC_VECTOR (31 downto 0);
        Aconst : in STD_LOGIC_VECTOR (31 downto 0);
        inputValid : in std_logic;
        inputLast : in std_logic;
        
        --Outputs
        output : out STD_LOGIC_VECTOR (31 downto 0);
        outputValid : out STD_LOGIC;
        outputLast : out std_logic
    );
end sqrt_pipe;

architecture Behavioral of sqrt_pipe is
    COMPONENT multiply_add_single_float
        PORT (
            aclk : IN STD_LOGIC;
            aresetn : IN STD_LOGIC;
            s_axis_a_tvalid : IN STD_LOGIC;
            s_axis_a_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            s_axis_a_tlast : IN STD_LOGIC;
            s_axis_b_tvalid : IN STD_LOGIC;
            s_axis_b_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            s_axis_c_tvalid : IN STD_LOGIC;
            s_axis_c_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            m_axis_result_tvalid : OUT STD_LOGIC;
            m_axis_result_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            m_axis_result_tlast : OUT STD_LOGIC
        );
    END COMPONENT;
    
    COMPONENT sqrt_single_float
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
    
    --Result of multiply-add operation
    signal fmaResult : std_logic_vector(31 downto 0);
    signal fmaResultValid, fmaResultLast : std_logic;
begin
    fma : multiply_add_single_float
    PORT MAP (
        aclk => aclk,
        aresetn => aresetn,
        s_axis_a_tvalid => inputValid,
        s_axis_a_tdata => alphaDb,
        s_axis_a_tlast => inputLast,
        s_axis_b_tvalid => inputValid,
        s_axis_b_tdata => BTau,
        s_axis_c_tvalid => inputValid,
        s_axis_c_tdata => Aconst,
        m_axis_result_tvalid => fmaResultValid,
        m_axis_result_tdata => fmaResult,
        m_axis_result_tlast => fmaResultLast 
    );
    
    sqrt : sqrt_single_float
    PORT MAP (
        aclk => aclk,
        aresetn => aresetn,
        s_axis_a_tvalid => fmaResultValid,
        s_axis_a_tdata => fmaResult,
        s_axis_a_tlast => fmaResultLast,
        m_axis_result_tvalid => outputValid,
        m_axis_result_tdata => output,
        m_axis_result_tlast => outputLast
    );
end Behavioral;
