-- vhdl-linter-disable type-resolved
-- vhdl-linter-disable unused
LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
use ieee.fixed_pkg.all;
use ieee.math_real.all;

PACKAGE FOC_types IS

    TYPE type_PWM_register IS ARRAY (INTEGER RANGE <>) OF signed (12 DOWNTO 0);
    TYPE type_3x12b_signed IS ARRAY (INTEGER RANGE <>) OF signed (12 DOWNTO 0);
    type typeABD_DSPregisters is ARRAY (INTEGER RANGE <>) OF STD_LOGIC_VECTOR (17 downto 0);
    type typeC_DSPregisters is ARRAY (INTEGER RANGE <>) OF STD_LOGIC_VECTOR (47 downto 0);
    type typeP_DSPregisters is ARRAY (INTEGER RANGE <>) OF STD_LOGIC_VECTOR (47 downto 0);
    type scalingParametersArray is ARRAY (INTEGER RANGE <>) OF SFIXED (0 downto -17);
    type valuesArrayAXI4 is ARRAY (INTEGER range <>) of std_logic_vector (17 downto 0);

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
    variable result : sfixed (arg'left+fractional downto fractional) := (others => '0');
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
    variable value: sfixed (A'range);
    variable temp_A: std_logic_vector(A'length-1 downto 0);
    variable temp_result: std_logic_vector(A'length-1 downto 0) := (others => '0');
  begin
    if B < 0 then
      return mulByBits(A, -B);
    end if;
    temp_A := std_logic_vector(A);
    temp_result(temp_A'left) := temp_A(temp_A'left); --store sign
    temp_result(temp_A'left-1-B downto temp_A'right) := temp_A(temp_A'left-1 downto temp_A'right+B); --shifting left B bits, but store the sign (the MSB)
    value := vecToSfixed(temp_result, value'right);
    return value;
  end function divByBits;

  function mulByBits (
    A : sfixed;
    B : INTEGER
  ) return sfixed IS
    variable value: sfixed (A'range);
    variable temp_A: std_logic_vector(A'length-1 downto 0);
    variable temp_result: std_logic_vector(A'length-1 downto 0) := (others => '0');
  begin
    if B < 0 then
      return divByBits(A, -B);
    end if;
    temp_A := std_logic_vector(A);
    temp_result(temp_A'left) := temp_A(temp_A'left); --store sign
    temp_result(temp_A'left-1 downto temp_A'right+B) := temp_A(temp_A'left-1-B downto temp_A'right); --shifting left B bits, but store the sign (the MSB)
    value := vecToSfixed(temp_result, value'right);
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