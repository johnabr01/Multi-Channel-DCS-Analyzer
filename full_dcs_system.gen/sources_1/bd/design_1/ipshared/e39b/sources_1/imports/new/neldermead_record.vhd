library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package neldermead_record is
    type point_pair_mse_t is record
        alphaDb  : std_logic_vector(31 downto 0);
        beta : std_logic_vector(31 downto 0);
        MSE  : std_logic_vector(31 downto 0);
        mseValid : std_logic;
    end record;
    
    type point_pair_t is record
        alphaDb  : std_logic_vector(31 downto 0);
        beta : std_logic_vector(31 downto 0);
    end record;
    
    type nelderMeadOperation is (reflect, extend, contract, shrink);
    
    constant pointPairResetVal : point_pair_mse_t := (
        alphaDb => (others => '0'),
        beta => (others => '0'),
        MSE => (others => '0'),
        mseValid => '0'
    );
    
    function to_point_pair(arg: point_pair_mse_t) return point_pair_t;
    function to_point_pair_mse(arg: point_pair_t) return point_pair_mse_t;
end package;

package body neldermead_record is    
    function to_point_pair(arg: point_pair_mse_t) return point_pair_t is
        variable justPoint : point_pair_t;
    begin
        justPoint.alphaDb := arg.alphaDb;
        justPoint.beta := arg.beta;
        return justPoint;
    end function;
    
    function to_point_pair_mse(arg: point_pair_t) return point_pair_mse_t is
        variable justPoint : point_pair_mse_t := pointPairResetVal;
    begin
        justPoint.alphaDb := arg.alphaDb;
        justPoint.beta := arg.beta;
        return justPoint;
    end function;
end package body neldermead_record;