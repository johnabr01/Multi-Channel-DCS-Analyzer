library IEEE;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;

package logb2Func is
    function logb2(input : natural) return integer;
end package;

package body logb2Func is
    function logb2(input : natural) return integer is begin
        return integer(ceil(log2(real(input))));
    end function;
end package body logb2Func;