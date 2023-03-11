-- vhdl-linter-disable type-resolved
-- vhdl-linter-disable unused
LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
use ieee.fixed_pkg.all;
use ieee.math_real.all;

PACKAGE FOC_types IS

    TYPE type_PWM_register IS ARRAY (INTEGER RANGE <>) OF signed (12 DOWNTO 0);


    function vecToSfixed (
      arg                     : STD_LOGIC_VECTOR;   
      constant fractional    : INTEGER := 0  
    ) return sfixed;

    function clog2 (
      A : REAL
    ) return INTEGER;

    function divByBits (
      A : sfixed;
      B : INTEGER
    ) return sfixed;

    function mulByBits (
      A : sfixed;
      B : INTEGER
    ) return sfixed;

    function unToSigned (
      arg                     : unsigned     
    ) return signed;

END FOC_types;

PACKAGE BODY FOC_types IS

function vecToSfixed (
  arg                     : STD_LOGIC_VECTOR;   
  constant fractional    : INTEGER := 0  
) return sfixed is
    variable result : sfixed (arg'left+fractional downto fractional);
  begin  -- function to_fixed
    result := to_sfixed(STD_ULOGIC_VECTOR(arg), arg'left+fractional, fractional);
    return result;
  end function vecToSfixed;

  function clog2 (A : REAL) return INTEGER is
    variable Y : REAL;
    variable N : INTEGER := 0;
  begin
    if  A = 1.0 or A = 0.0 then  -- trivial rejection and acceptance
      return INTEGER(A);
    end if;
    if A > 0.0 and A < 1.0 then
      return -(clog2(1.0/A));
    end if;
    Y := real(A);
    while Y >= 2.0 loop
      Y := Y / 2.0;
      N := N + 1;
    end loop;
    if Y > 0.0 then
      N := N + 1;  -- round up to the nearest log2
    end if;
   return N;
  end function clog2;

  function divByBits (
    A : sfixed;
    B : INTEGER
  ) return sfixed IS
    variable value: sfixed (A'left downto A'right);
    variable temp_vector: sfixed(A'left-A'right downto 0);
    variable VECTOR_0 : sfixed (B-1 downto 0) := to_sfixed(0, B-1, 0); 
  begin
    if B < 0 then
      return mulByBits(A, -B);
    end if;
    value := A(A'left) & VECTOR_0 & (A(A'left-1 downto A'right+B));
    return value;
  end function divByBits;

  function mulByBits (
    A : sfixed;
    B : INTEGER
  ) return sfixed IS
    variable value: sfixed (A'left downto A'right);
    variable temp_vector: sfixed(A'left-A'right downto 0);
    variable VECTOR_0 : sfixed (B-1 downto 0) := to_sfixed(0, B-1, 0); 
  begin
    if B < 0 then
      return divByBits(A, -B);
    end if;
    value := A(A'left) & (A(A'left-1 downto A'right+B)) & VECTOR_0;
    return value;
  end function mulByBits;

      function unToSigned (
      arg                     : unsigned     
    ) return signed is
      variable result: signed(arg'left+1 downto arg'right);
    begin
      result := resize(signed(std_logic_vector'("0" & std_logic_vector(arg))), result'length);
      return result;
    end function unToSigned;

END PACKAGE BODY FOC_types;