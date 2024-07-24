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
        maxError1 : in  sfixed (0 downto -17);
        minError1 : in  sfixed (0 downto -17);
        maxError2 : in  sfixed (0 downto -17);
        minError2 : in  sfixed (0 downto -17);
        Kout      : in  sfixed(12 downto -22);
        maxOut    : in  sfixed (0 downto -17);
        minOut    : in  sfixed (0 downto -17);
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

    constant amountDSP : integer                                     := 12;
    signal A_reg       : typeABD_DSPregisters (amountDSP-1 downto 0) := (others => (others => '0'));
    signal B_reg       : typeABD_DSPregisters (amountDSP-1 downto 0) := (others => (others => '0'));
    signal D_reg       : typeABD_DSPregisters (amountDSP-1 downto 0) := (others => (others => '0'));
    signal C_reg       : typeC_DSPregisters (amountDSP-1 downto 0)   := (others => (others => '0'));
    signal P_reg       : typeC_DSPregisters (amountDSP-1 downto 0)   := (others => (others => '0'));
    signal RDY         : std_logic;
    signal addra       : std_logic_vector(11 downto 0);
    signal douta       : std_logic_vector(17 downto 0);
    signal addrb       : std_logic_vector(11 downto 0);
    signal doutb       : std_logic_vector(17 downto 0);
begin
    DSP_instance : mpDSP
        generic map (
            amount     => amountDSP,
            waitCycles => 5
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
            douta => douta,
            clkb  => clk,
            addrb => addrb,
            doutb => doutb
            );

    process
        variable vec_Kin1_input1                : std_logic_vector(64 downto 0)                    := (others => '0');
        variable vec_Kin2_input2                : std_logic_vector(64 downto 0)                    := (others => '0');
        variable vec_Kout_result                : std_logic_vector(64 downto 0)                    := (others => '0');
        variable vec_error1                     : std_logic_vector(17 downto 0)                    := (others => '0');
        variable vec_error2                     : std_logic_vector(17 downto 0)                    := (others => '0');
        variable vec_result_subSum1             : std_logic_vector(17 downto 0)                    := (others => '0');
        variable vec_result_subSum2             : std_logic_vector(17 downto 0)                    := (others => '0');
        variable vec_kin1                       : std_logic_vector (Kin1'left-Kin1'right downto 0) := (others => '0');
        variable vec_kin2                       : std_logic_vector (Kin2'left-Kin2'right downto 0) := (others => '0');
        variable vec_kout                       : std_logic_vector (kout'left-kout'right downto 0) := (others => '0');
        variable ZERO                           : std_logic_vector(17 downto 0)                    := std_logic_vector(to_unsigned(0, 18));
        variable error1                         : sfixed (setpoint1'range)                         := (others => '0');
        variable error2                         : sfixed (setpoint1'range)                         := (others => '0');
        variable operationSelector              : integer range 63 downto -1                       := -1;
        variable error1Result                   : sfixed(0 downto -23)                             := (others => '0');
        variable error2Result                   : sfixed(0 downto -23)                             := (others => '0');
        --variable vec_error1Result    : std_logic_vector(error1Result'left downto error1Result'right) := (others => '0');
        --variable vec_error2Result    : std_logic_vector(error2Result'left downto error2Result'right) := (others => '0');
        variable BRAM_error1Result_0            : signed(5 downto 0)                               := (others => '0');
        variable BRAM_error1Result_1            : signed(5 downto 0)                               := (others => '0');
        variable BRAM_error2Result_0            : signed(5 downto 0)                               := (others => '0');
        variable BRAM_error2Result_1            : signed(5 downto 0)                               := (others => '0');
        variable vec_interpolation_error1Result : std_logic_vector(17 downto 0)                    := (others => '0');
        variable vec_interpolation_error2Result : std_logic_vector(17 downto 0)                    := (others => '0');
        variable interpolation_error1Result_1   : sfixed(0 downto -17)                             := (others => '0');
        variable interpolation_error2Result_1   : sfixed(0 downto -17)                             := (others => '0');
        variable interpolation_error1Result_0   : sfixed(0 downto -17)                             := (others => '0');
        variable interpolation_error2Result_0   : sfixed(0 downto -17)                             := (others => '0');
        variable Kout_result                    : sfixed(0 downto -17)                             := (others => '0');
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
                vec_kout   := std_logic_vector(kout);

                doubleMulDSPHandler(vec_Kin1_input1, vec_error1, vec_kin1, ZERO, C_reg(0), C_reg(1), B_reg(0), B_reg(1), A_reg(0), A_reg(1), D_reg(0), D_reg(1), P_reg(0), P_reg(1));
                doubleMulDSPHandler(vec_Kin2_input2, vec_error2, vec_kin2, ZERO, C_reg(2), C_reg(3), B_reg(2), B_reg(3), A_reg(2), A_reg(3), D_reg(2), D_reg(3), P_reg(2), P_reg(3));

                operationSelector := 1;
            when 1 =>  --calc errors and compare result with max and min values
                error1Result := resize(vecToSfixed(vec_Kin1_input1, Kin1'right+reading1'right), 0, -23);
                error2Result := resize(vecToSfixed(vec_Kin2_input2, Kin2'right+reading2'right), 0, -23);

                if (error1Result > maxError1) then
                    error1Result := resize(maxError1, error1Result'left, error1Result'right);
                elsif (error1Result < minError1) then
                    error1Result := resize(minError1, error1Result'left, error1Result'right);
                end if;

                if (error2Result > maxError2) then
                    error2Result := resize(maxError2, error2Result'left, error2Result'right);
                elsif (error2Result < minError2) then
                    error2Result := resize(minError2, error2Result'left, error2Result'right);
                end if;

                operationSelector := 2;
            when 2 =>  --take only 6 most signifficant bits from error value and let it be the one of address of 2-dimmensional table
                BRAM_error1Result_0(5 downto 0) := signed(signed(std_logic_vector(error1Result(0 downto -5))));
                BRAM_error2Result_0(5 downto 0) := signed(signed(std_logic_vector(error2Result(0 downto -5))));

                if (BRAM_error1Result_0 = to_signed(31, 6)) then
                    BRAM_error1Result_1 := to_signed(31, 6);
                else
                    BRAM_error1Result_1(5 downto 0) := signed(signed(std_logic_vector(error1Result(0 downto -5))) + 1);
                end if;

                if (BRAM_error2Result_0 = to_signed(31, 6)) then
                    BRAM_error2Result_1 := to_signed(31, 6);
                else
                    BRAM_error2Result_1(5 downto 0) := signed(signed(std_logic_vector(error2Result(0 downto -5))) + 1);
                end if;

                --use other bits from variable as grading for interpolation 
                vec_interpolation_error1Result(17)          := error1Result(0);
                vec_interpolation_error1Result(16 downto 0) := std_logic_vector(error1Result(-6 downto error1Result'right+1));
                interpolation_error1Result_1                := resize(abs(vecToSfixed(vec_interpolation_error1Result, interpolation_error1Result_1'right)), interpolation_error1Result_1'left, interpolation_error1Result_1'right);
                interpolation_error1Result_0                := resize((to_sfixed(1.0, 0, -17) - interpolation_error1Result_1), interpolation_error1Result_0'left, interpolation_error1Result_0'right);

                vec_interpolation_error2Result(17)          := error1Result(0);
                vec_interpolation_error2Result(16 downto 0) := std_logic_vector(error2Result(-6 downto error2Result'right+1));
                interpolation_error2Result_1                := resize(abs(vecToSfixed(vec_interpolation_error2Result, interpolation_error2Result_1'right)), interpolation_error2Result_1'left, interpolation_error2Result_1'right);
                interpolation_error2Result_0                := resize((to_sfixed(1.0, 0, -17) - interpolation_error2Result_1), interpolation_error2Result_0'left, interpolation_error2Result_0'right);

                operationSelector := 3;
            when 3 =>
                addra(11 downto 6) <= std_logic_vector(BRAM_error1Result_0);
                addra(5 downto 0)  <= std_logic_vector(BRAM_error2Result_0);
                addrb(11 downto 6) <= std_logic_vector(BRAM_error1Result_1);
                addrb(5 downto 0)  <= std_logic_vector(BRAM_error2Result_1);

                operationSelector := 4;
            when 6 =>
                A_reg(4)(17 downto 0) <= std_logic_vector(interpolation_error1Result_0);
                D_reg(4)(17 downto 0) <= std_logic_vector(interpolation_error2Result_0);
                B_reg(4)              <= douta;

                A_reg(5)(17 downto 0) <= std_logic_vector(interpolation_error1Result_1);
                D_reg(5)(17 downto 0) <= std_logic_vector(interpolation_error2Result_1);
                B_reg(5)              <= doutb;

                operationSelector := 7;
            when 7 =>
                addra(11 downto 6) <= std_logic_vector(BRAM_error1Result_0);
                addra(5 downto 0)  <= std_logic_vector(BRAM_error2Result_1);
                addrb(11 downto 6) <= std_logic_vector(BRAM_error1Result_1);
                addrb(5 downto 0)  <= std_logic_vector(BRAM_error2Result_0);

                operationSelector := 8;
            when 10 =>
                A_reg(6) <= std_logic_vector(interpolation_error1Result_0);
                D_reg(6) <= std_logic_vector(interpolation_error2Result_1);
                B_reg(6) <= douta;

                A_reg(7) <= std_logic_vector(interpolation_error1Result_1);
                D_reg(7) <= std_logic_vector(interpolation_error2Result_0);
                B_reg(7) <= doutb;

                operationSelector := 11;
            when 11 =>
                A_reg(8) <= std_logic_vector(sfixed(resize(vecToSfixed(P_reg(4), -34), 1, -16)));
                D_reg(8) <= std_logic_vector(sfixed(resize(vecToSfixed(P_reg(5), -34), 1, -16)));
                B_reg(8) <= std_logic_vector(to_signed(1, 18));

                A_reg(9) <= std_logic_vector(sfixed(resize(vecToSfixed(P_reg(6), -34), 1, -16)));
                D_reg(9) <= std_logic_vector(sfixed(resize(vecToSfixed(P_reg(7), -34), 1, -16)));
                B_reg(9) <= std_logic_vector(to_signed(1, 18));

                vec_result_subSum1 := std_logic_vector(resize(vecToSfixed(P_reg(8), -16), 2, -15));
                vec_result_subSum2 := std_logic_vector(resize(vecToSfixed(P_reg(9), -16), 2, -15));
                doubleMulDSPHandler(vec_Kout_result, vec_result_subSum1, vec_kout, vec_result_subSum2, C_reg(10), C_reg(11), B_reg(10), B_reg(11), A_reg(10), A_reg(11), D_reg(10), D_reg(11), P_reg(10), P_reg(11));

                operationSelector := 12;
            when 12 =>
                Kout_result := resize(divByBits(vecToSfixed(vec_Kout_result, -15+kout'right), 2), Kout_result'left, Kout_result'right);

                if kout_result > maxOut then
                    output <= maxOut;
                elsif kout_result < minOut then
                    output <= minOut;
                else
                    output <= Kout_result;
                end if;

                operationSelector := 13;
            when others =>
                if (operationSelector = 16) then
                    operationSelector := 0;
                elsif (RDY = '1') then
                    operationSelector := operationSelector + 1;
                else
                    operationSelector := -1;
                end if;
        end case;
    end process;


end Behavioral;
