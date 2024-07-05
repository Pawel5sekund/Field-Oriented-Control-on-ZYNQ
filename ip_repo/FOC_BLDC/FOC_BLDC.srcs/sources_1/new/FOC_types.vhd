-- vhdl-linter-disable type-resolved
-- vhdl-linter-disable unused
library IEEE;

use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use ieee.fixed_pkg.all;
use ieee.math_real.all;

package FOC_types is

  type type_PWM_register is array (integer range <>) of signed (12 downto 0);
  type type_3x12b_signed is array (integer range <>) of signed (12 downto 0);
  type typeABD_DSPregisters is array (integer range <>) of std_logic_vector (17 downto 0);
  type typeC_DSPregisters is array (integer range <>) of std_logic_vector (47 downto 0);
  type typeP_DSPregisters is array (integer range <>) of std_logic_vector (47 downto 0);
  type scalingParametersArray is array (integer range <>) of SFIXED (0 downto -17);
  type valuesArrayAXI4 is array (integer range <>) of std_logic_vector (17 downto 0);

  function vecToSfixed (
    arg                 : std_logic_vector;
    constant fractional : integer := 0
    ) return sfixed;

  function clog2 (
    A : real
    ) return integer;

  function divByBits (
    A : sfixed;
    B : integer
    ) return sfixed;

  function mulByBits (
    A : sfixed;
    B : integer
    ) return sfixed;

  function unToSigned (
    arg : unsigned
    ) return signed;

  procedure doubleSumDSPHandler(
    variable sumResult : inout std_logic_vector (93 downto 0);
    signal C1_out      : out   std_logic_vector (47 downto 0);
    signal C2_out      : out   std_logic_vector (47 downto 0);
    signal B2_out      : out   std_logic_vector (17 downto 0);
    signal A2_out      : out   std_logic_vector (17 downto 0);
    signal P1_in       : in    std_logic_vector (47 downto 0);
    signal P2_in       : in    std_logic_vector (47 downto 0)
    );

  procedure doubleMulDSPHandler(
    variable mulResult : inout std_logic_vector (93 downto 0);
    signal A_in        : in    std_logic_vector (34 downto 0);
    signal B_in        : in    std_logic_vector (34 downto 0);
    signal D_in        : in    std_logic_vector (34 downto 0);
    signal C1_out      : out   std_logic_vector (47 downto 0);
    signal C2_out      : out   std_logic_vector (47 downto 0);
    signal B1_out      : out   std_logic_vector (17 downto 0);
    signal B2_out      : out   std_logic_vector (17 downto 0);
    signal A1_out      : out   std_logic_vector (17 downto 0);
    signal A2_out      : out   std_logic_vector (17 downto 0);
    signal D1_out      : out   std_logic_vector (17 downto 0);
    signal D2_out      : out   std_logic_vector (17 downto 0);
    signal P1_in       : in    std_logic_vector (47 downto 0);
    signal P2_in       : in    std_logic_vector (47 downto 0)
    );


end FOC_types;

package body FOC_types is

  function vecToSfixed (
    arg                 : std_logic_vector;
    constant fractional : integer := 0
    ) return sfixed is
    variable result : sfixed (arg'left+fractional downto fractional) := (others => '0');
  begin  -- function to_fixed
    result := to_sfixed(std_ulogic_vector(arg), arg'left+fractional, fractional);
    return result;
  end function vecToSfixed;

  function clog2 (A : real) return integer is
    variable Y : real;
    variable N : integer := 0;
  begin
    if A = 1.0 or A = 0.0 then          -- trivial rejection and acceptance
      return integer(A);
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
      N := N + 1;                       -- round up to the nearest log2
    end if;
    return N;
  end function clog2;

  function divByBits (
    A : sfixed;
    B : integer
    ) return sfixed is
    variable value       : sfixed (A'range);
    variable temp_A      : std_logic_vector(A'length-1 downto 0);
    variable temp_result : std_logic_vector(A'length-1 downto 0) := (others => '0');
  begin
    if B < 0 then
      return mulByBits(A, -B);
    end if;
    temp_A                                           := std_logic_vector(A);
    temp_result(temp_A'left-1-B downto temp_A'right) := temp_A(temp_A'left-1 downto temp_A'right+B);  --shifting left B bits, but store the sign (the MSB)
    case temp_A(temp_A'left) is
      when '1' =>
        temp_result(temp_result'left)                      := '1';  --store sign
        temp_result(temp_result'left downto temp_A'left-B) := (others => '1');
      when '0' =>
        temp_result(temp_result'left)                      := '0';  --store sign
        temp_result(temp_result'left downto temp_A'left-B) := (others => '0');
      when others =>
    --nop()
    end case;
    value := vecToSfixed(temp_result, value'right);
    return value;
  end function divByBits;

  function mulByBits (
    A : sfixed;
    B : integer
    ) return sfixed is
    variable value       : sfixed (A'range);
    variable temp_A      : std_logic_vector(A'length-1 downto 0);
    variable temp_result : std_logic_vector(A'length-1 downto 0) := (others => '0');
  begin
    if B < 0 then
      return divByBits(A, -B);
    end if;
    temp_A                                           := std_logic_vector(A);
    temp_result(temp_A'left-1 downto temp_A'right+B) := temp_A(temp_A'left-1-B downto temp_A'right);  --shifting left B bits, but store the sign (the MSB)
    case temp_A(temp_A'left) is
      when '1' =>
        temp_result(temp_result'left)                          := '1';  --store sign
        temp_result(temp_A'right+B-1 downto temp_result'right) := (others => '1');
      when '0' =>
        temp_result(temp_result'left)                               := '0';  --store sign
        temp_result(temp_result'right+B-1 downto temp_result'right) := (others => '0');
      when others =>
    --nop()
    end case;
    value := vecToSfixed(temp_result, value'right);
    return value;
  end function mulByBits;

  function unToSigned (
    arg : unsigned
    ) return signed is
    variable result : signed(arg'left+1 downto arg'right);
  begin
    result := resize(signed(std_logic_vector'("0" & std_logic_vector(arg))), result'length);
    return result;
  end function unToSigned;

  procedure doubleSumDSPHandler(
    variable sumResult : inout std_logic_vector (93 downto 0);
    signal C1_out      : out   std_logic_vector (47 downto 0);
    signal C2_out      : out   std_logic_vector (47 downto 0);
    signal B2_out      : out   std_logic_vector (17 downto 0);
    signal A2_out      : out   std_logic_vector (17 downto 0);
    signal P1_in       : in    std_logic_vector (47 downto 0);
    signal P2_in       : in    std_logic_vector (47 downto 0)
    ) is
  begin

    sumResult(93 downto 46) := P2_in(47 downto 0);
    sumResult(45 downto 0)  := P1_in(45 downto 0);

    B2_out <= std_logic_vector(to_signed(1, 18));

    case P2_in (47 downto 47) & P1_in(47 downto 46) is
      when "001" =>
        A2_out               <= std_logic_vector(to_signed(1, 18));
        C1_out(45 downto 0)  <= sumResult(45 downto 0);
        C1_out(47 downto 46) <= "00";
      when "110" =>
        A2_out               <= std_logic_vector(to_signed(-1, 18));
        C1_out(45 downto 0)  <= sumResult(45 downto 0);
        C1_out(47 downto 46) <= "11";
      when "100" =>
        A2_out               <= std_logic_vector(to_signed(2, 18));
        C1_out(45 downto 0)  <= not sumResult(45 downto 0);
        C1_out(47 downto 46) <= "11";
      when "011" =>
        A2_out               <= std_logic_vector(to_signed(-2, 18));
        C1_out(45 downto 0)  <= not sumResult(45 downto 0);
        C1_out(47 downto 46) <= "00";
      when "101" =>
        A2_out               <= std_logic_vector(to_signed(3, 18));
        C1_out(45 downto 0)  <= not sumResult(45 downto 0);
        C1_out(47 downto 46) <= "00";
      when "010" =>
        A2_out               <= std_logic_vector(to_signed(-3, 18));
        C1_out(45 downto 0)  <= not sumResult(45 downto 0);
        C1_out(47 downto 46) <= "00";
      when others =>
        A2_out              <= std_logic_vector(to_signed(0, 18));
        C1_out(45 downto 0) <= sumResult(45 downto 0);
        C1_out(47)          <= sumResult(93);
        C1_out(46)          <= sumResult(93);
    end case;

    C2_out(47 downto 0) <= sumResult(93 downto 46);

  end procedure;

end package body FOC_types;
