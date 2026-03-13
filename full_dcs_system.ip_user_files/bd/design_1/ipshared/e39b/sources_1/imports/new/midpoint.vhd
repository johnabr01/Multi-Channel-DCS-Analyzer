library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.neldermead_record.all;

entity midpoint is
    Port (
        --Clk + rst
        aclk : in STD_LOGIC;
        aresetn : in STD_LOGIC;
        
        point1 : in point_pair_t;
        point2 : in point_pair_t;
        inputValid : in std_logic;
        
        midpoint : out point_pair_t;
        outputValid : out std_logic
    );
end midpoint;

architecture Behavioral of midpoint is
    COMPONENT add_single_float
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

    --Halves a single precision; unable to handle denormalized numbers
    function HalveSinglePrecision(
        floatIn : std_logic_vector(31 downto 0)
    ) return std_logic_vector is
        variable orig_exponent, new_exponent : unsigned(7 downto 0);
    begin
        orig_exponent := unsigned(floatIn(30 downto 23));
        if orig_exponent = to_unsigned(0, orig_exponent'LENGTH) then
            new_exponent := orig_exponent;
        else
            new_exponent := orig_exponent - 1;
        end if;

        return floatIn(31) & std_logic_vector(new_exponent) & floatIn(22 downto 0);
    end function;
    
    signal sum : point_pair_t;
    signal alphaDbSumValid, betaSumValid : std_logic;
begin
    midpoint.alphaDb <= HalveSinglePrecision(sum.alphaDb);
    midpoint.beta <= HalveSinglePrecision(sum.beta);

    outputValid <= alphaDbSumValid AND betaSumValid;

    alphaDbAdder : add_single_float
    PORT MAP (
        aclk => aclk,
        aresetn => aresetn,
        s_axis_a_tvalid => inputValid,
        s_axis_a_tdata => point1.alphaDb,
        s_axis_b_tvalid => inputValid,
        s_axis_b_tdata => point2.alphaDb,
        m_axis_result_tvalid => alphaDbSumValid,
        m_axis_result_tdata => sum.alphaDb
    );
    
    betaAdder : add_single_float
    PORT MAP (
        aclk => aclk,
        aresetn => aresetn,
        s_axis_a_tvalid => inputValid,
        s_axis_a_tdata => point1.beta,
        s_axis_b_tvalid => inputValid,
        s_axis_b_tdata => point2.beta,
        m_axis_result_tvalid => betaSumValid,
        m_axis_result_tdata => sum.beta
    );
end Behavioral;
