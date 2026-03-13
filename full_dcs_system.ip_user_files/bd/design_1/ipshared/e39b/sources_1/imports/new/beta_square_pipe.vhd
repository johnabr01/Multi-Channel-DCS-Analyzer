library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity beta_square_pipe is
    Port (
        --Clk + rst
        aclk : in STD_LOGIC;
        aresetn : in STD_LOGIC;
        
        --Inputs
        diffIn : in STD_LOGIC_VECTOR (31 downto 0);
        betaIn : in STD_LOGIC_VECTOR (31 downto 0);
        inputValid : in std_logic;
        inputLast : in std_logic;
        
        --Outputs
        output : out STD_LOGIC_VECTOR (31 downto 0);
        outputValid : out STD_LOGIC;
        outputLast : out std_logic
    );
end beta_square_pipe;

architecture Behavioral of beta_square_pipe is
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
    
    COMPONENT shift_register is
      generic (
        sr_depth : positive;
        sr_width : positive
      );
      port (
        clk : in std_logic;
        aresetn : in std_logic;
     
        sr_in : in std_logic_vector(sr_width - 1 downto 0);
        sr_out : out std_logic_vector(sr_width - 1 downto 0)
      );
    end COMPONENT;
    
    signal squareResult : std_logic_vector(31 downto 0);
    signal squareResultValid, squareResultLast : std_logic;
    
    signal betaInDelayed : std_logic_vector(betaIn'RANGE);
begin
    square : multiply_single_float
    PORT MAP (
        aclk => aclk,
        aresetn => aresetn,
        s_axis_a_tvalid => inputValid,
        s_axis_a_tdata => diffIn,
        s_axis_a_tlast => inputLast,
        s_axis_b_tvalid => inputValid,
        s_axis_b_tdata => diffIn,
        m_axis_result_tvalid => squareResultValid,
        m_axis_result_tdata => squareResult,
        m_axis_result_tlast => squareResultLast
    );
    
    betaDelayer : shift_register
    generic map (
        --Should match latency of multiplier
        sr_depth => 5,
        sr_width => betaIn'HIGH - betaIn'LOW + 1
    )
    port map (
        clk => aclk,
        aresetn => aresetn,
        
        sr_in => betaIn,
        sr_out => betaInDelayed
    );
    
    beta_multiply : multiply_single_float
    PORT MAP (
        aclk => aclk,
        aresetn => aresetn,
        s_axis_a_tvalid => squareResultValid,
        s_axis_a_tdata => squareResult,
        s_axis_a_tlast => squareResultLast,
        s_axis_b_tvalid => squareResultValid,
        s_axis_b_tdata => betaInDelayed,
        m_axis_result_tvalid => outputValid,
        m_axis_result_tdata => output,
        m_axis_result_tlast => outputLast
    );
end Behavioral;
