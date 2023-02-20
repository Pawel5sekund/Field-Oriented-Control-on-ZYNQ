-- vhdl-linter-disable port-declaration
-- vhdl-linter-disable type-resolved
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
entity FOC_position_checker is
  --  Port ( );
  generic (
    STEP_scale         : integer := 16;
    full_rotate_pulses : integer := 4095
    );
  port (
    CLK                             : in  std_logic;
    encoder                         : in  std_logic_vector (1 downto 0);
    STEP                            : in  std_logic;
    position_calibration            : in  std_logic_vector (15 downto 0);
    position_calibration_SET_signal : in  std_logic;
    position                        : out signed (14 downto 0) := (others => '0');
    dposition                       : out signed (12 downto 0) := (others => '0');
    DIR                             : in  std_logic            := '0'
    );
end FOC_position_checker;

architecture Behavioral of FOC_position_checker is

begin
  position_checker : process is
    variable last_encoder  : std_logic_vector (1 downto 0) := "00";
    variable last_STEP     : std_logic                     := '0';
    variable var_position  : signed(position'range)        := (others => '0');
    variable var_dposition : signed(dposition'range)       := (others => '0');
  begin

    wait until rising_edge(CLK);

    case (std_logic_vector(last_encoder xor encoder) & encoder) is
      --do przodu
      when "1010" | "1001" | "0111" | "0100" =>
        var_position  := var_position + 1;
        var_dposition := var_dposition - 1;
      --do tylu
      when "0110" | "0101" | "1011" | "1000" =>
        var_position  := var_position - 1;
        var_dposition := var_dposition + 1;
      when others =>
    --nop()
    end case;

    case std_logic_vector'(std_logic(last_STEP xor STEP) & STEP & DIR) is
      when "110" =>
        var_dposition := var_dposition - STEP_scale;
      when "111" =>
        var_dposition := var_dposition + STEP_scale;
      when others =>
    --nop()
    end case;

    if (var_position > (full_rotate_pulses - 1)) then
      var_position := var_position - full_rotate_pulses;
    elsif (var_position < 0) then
      var_position := var_position + full_rotate_pulses;
    end if;

    if (position_calibration_SET_signal = '1') then
      --position <= signed(position_calibration(14 downto 0));
      var_position  := signed(position_calibration(14 downto 0));
      var_dposition := (others => '0');
    else
      position <= var_position;
    end if;

    dposition    <= var_dposition;
    last_encoder := encoder;
    last_STEP    := STEP;

    dposition <= var_dposition;
    position  <= var_position;
  end process position_checker;

end Behavioral;
