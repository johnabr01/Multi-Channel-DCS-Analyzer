library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.neldermead_record.all;

entity reflect is
    Port (
        --Clk + rst
        aclk : in STD_LOGIC;
        aresetn : in STD_LOGIC;
        
        midpoint : in point_pair_t;        
        toReflect : in point_pair_t;
        inputValid : in std_logic;
        
        reflected : out point_pair_t;
        outputValid : out std_logic
    );
end reflect;

architecture Behavioral of reflect is
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

    function DoubleSinglePrecision(
        floatIn : std_logic_vector(31 downto 0)
    ) return std_logic_vector is
        variable orig_exponent, new_exponent : unsigned(7 downto 0);
    begin
        orig_exponent := unsigned(floatIn(30 downto 23));
        new_exponent := orig_exponent + 1;

        return floatIn(31) & std_logic_vector(new_exponent) & floatIn(22 downto 0);
    end function;

    --Doubled midpoints
    signal midpointDoubled : point_pair_t;
    signal alphaDbReflectedValid, betaReflectedValid : std_logic;
begin
    --Perform doubling of midpoints combinationally
    midpointDoubled.alphaDb <= DoubleSinglePrecision(midpoint.alphaDb);
    midpointDoubled.beta <= DoubleSinglePrecision(midpoint.beta);
    
    outputValid <= alphaDbReflectedValid AND betaReflectedValid;
    
    alphaDbSubtraction : subtract_single_float
    PORT MAP (
        aclk => aclk,
        aresetn => aresetn,
        s_axis_a_tvalid => inputValid,
        s_axis_a_tdata => midpointDoubled.alphaDb,
        s_axis_a_tlast => '0',
        s_axis_b_tvalid => inputValid,
        s_axis_b_tdata => toReflect.alphaDb,
        m_axis_result_tvalid => alphaDbReflectedValid,
        m_axis_result_tdata => reflected.alphaDb,
        m_axis_result_tlast => open
    );
    
    betaSubtraction : subtract_single_float
    PORT MAP (
        aclk => aclk,
        aresetn => aresetn,
        s_axis_a_tvalid => inputValid,
        s_axis_a_tdata => midpointDoubled.beta,
        s_axis_a_tlast => '0',
        s_axis_b_tvalid => inputValid,
        s_axis_b_tdata => toReflect.beta,
        m_axis_result_tvalid => betaReflectedValid,
        m_axis_result_tdata => reflected.beta,
        m_axis_result_tlast => open
    );
end Behavioral;
