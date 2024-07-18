library ieee;

library foc_lib;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use foc_lib.foc_types.all;
use ieee.fixed_pkg.all;

entity FOC_fuzzyLogic is
    port (
        CLK       : in  std_logic;
        reading1  : in  sfixed(0 downto -17);
        reading2  : in  sfixed(0 downto -17);
        output    : out sfixed(0 downto -17);
        Kin1      : in  sfixed(12 downto -22);
        Kin2      : in  sfixed(12 downto -22);
        Kout      : in  sfixed(12 downto -22);
        setpoint1 : in  sfixed(0 downto -17);
        setpoint2 : in  sfixed(0 downto -17)
        );
end FOC_fuzzyLogic;

architecture Behavioral of FOC_fuzzyLogic is
    component mpDSP is
        generic (
            amount     : integer := 8;
            waitCycles : integer := 3
            );
        port (
            CLK   : in  std_logic;
            A_reg : in  typeABD_DSPregisters (amount-1 downto 0);
            B_reg : in  typeABD_DSPregisters (amount-1 downto 0);
            D_reg : in  typeABD_DSPregisters (amount-1 downto 0);
            C_reg : in  typeC_DSPregisters (amount-1 downto 0);
            P_reg : out typeC_DSPregisters (amount-1 downto 0);
            RDY   : out std_logic
            );
    end component;

    component FOC_fuzzyLogic_BRAM
        port (
            clka  : in  std_logic;
            addra : in  std_logic_vector (11 downto 0);
            douta : out std_logic_vector (17 downto 0);
            clkb  : in  std_logic;
            addrb : in  std_logic_vector (11 downto 0);
            doutb : out std_logic_vector (17 downto 0)
            );
    end component;

    constant amountDSP : integer                                     := 16;
    signal A_reg       : typeABD_DSPregisters (amountDSP-1 downto 0) := (others => (others => '0'));
    signal B_reg       : typeABD_DSPregisters (amountDSP-1 downto 0) := (others => (others => '0'));
    signal D_reg       : typeABD_DSPregisters (amountDSP-1 downto 0) := (others => (others => '0'));
    signal C_reg       : typeC_DSPregisters (amountDSP-1 downto 0)   := (others => (others => '0'));
    signal P_reg       : typeC_DSPregisters (amountDSP-1 downto 0)   := (others => (others => '0'));
    signal RDY         : std_logic;
    signal addra       : std_logic(11 downto 0);
    signal douta       : std_logic(17 downto 0);
    signal addrb       : std_logic(11 downto 0);
    signal doutb       : std_logic(17 downto 0);
begin
    DSP_instance : mpDSP
        generic map (
            amount     => amountDSP,
            waitCycles => 3
            )
        port map (
            CLK   => CLK,
            A_reg => A_reg,
            B_reg => B_reg,
            D_reg => D_reg,
            C_reg => C_reg,
            P_reg => P_reg,
            RDY   => RDY
            );

    BRAM_fuzzyLUT : FOC_fuzzyLogic_BRAM
        port map (
            clka  => clk,
            addra => addra,
            clkb  => clk,
            addrb => addrb,
            doutb => doutb
            );

    process
        variable vec_Kin1_input1   : std_logic_vector(64 downto 0)                    := (others => '0');
        variable vec_Kin2_input2   : std_logic_vector(64 downto 0)                    := (others => '0');
        variable vec_error1        : std_logic_vector(17 downto 0)                    := (others => '0');
        variable vec_error2        : std_logic_vector(17 downto 0)                    := (others => '0');
        variable vec_kin1          : std_logic_vector (Kin1'left-Kin1'right downto 0) := (others => '0');
        variable vec_kin2          : std_logic_vector (Kin2'left-Kin2'right downto 0) := (others => '0');
        variable ZERO              : std_logic_vector(17 downto 0)                    := std_logic_vector(to_unsigned(0, 18));
        variable error1            : sfixed (setpoint1'range)                         := (others => '0');
        variable error2            : sfixed (setpoint1'range)                         := (others => '0');
        variable operationSelector : integer range 63 downto -1                       := -1;
    begin

        wait until RISING_EDGE(CLK);

        case operationSelector is
            when 0 =>
                error1 := resize(setpoint1 - reading1, error1'left, error1'right);  --calc error
                error2 := resize(setpoint2 - reading2, error2'left, error2'right);  --calc error

                vec_error1 := std_logic_vector(error1);
                vec_error2 := std_logic_vector(error2);
                vec_kin1   := std_logic_vector(kin1);
                vec_kin2   := std_logic_vector(kin2);

                doubleMulDSPHandler(vec_Kin1_input1, vec_error1, vec_kin1, ZERO, C_reg(0), C_reg(1), B_reg(0), B_reg(1), A_reg(0), A_reg(1), D_reg(0), D_reg(1), P_reg(0), P_reg(1));
                doubleMulDSPHandler(vec_Kin2_input2, vec_error2, vec_kin2, ZERO, C_reg(2), C_reg(3), B_reg(2), B_reg(3), A_reg(2), A_reg(3), D_reg(2), D_reg(3), P_reg(2), P_reg(3));

            operationSelector := 1;
            when 1 =>
                
            operationSelector := 2;
            when others =>
                if (operationSelector = 63) then
                    operationSelector := 0;
                elsif (RDY = '1') then
                    operationSelector := operationSelector + 1;
                else
                    operationSelector := -1;
                end if;
        end case;
    end process;


end Behavioral;
