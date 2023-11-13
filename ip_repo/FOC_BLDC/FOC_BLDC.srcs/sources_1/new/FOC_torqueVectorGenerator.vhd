library ieee;
library foc_lib;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use foc_lib.foc_types.all;
use ieee.fixed_pkg.all;


entity FOC_torqueVectorGenerator is
    generic(
        amountScalingParameters : integer               := 1;
        positionScaler          : sfixed (0 downto -17) := resize(to_sfixed(1.0/1024.0, 0, -17), 0, -17)  --1/(encoder pulses per electrical rotationn
        );
    port (
        CLK               : in  std_logic;
        position          : in  signed (17 downto 0);
        vectorPosition    : in  sfixed (0 downto -17);
        scalingParameters : in  scalingParametersArray (amountScalingParameters-1 downto 0);
        PWMOutput         : out type_PWM_register(2 downto 0)
        );
end FOC_torqueVectorGenerator;

architecture Behavioral of FOC_torqueVectorGenerator is

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

    component BRAM_SIN
        port (
            clka  : in  std_logic;
            addra : in  std_logic_vector(10 downto 0);
            douta : out std_logic_vector(11 downto 0)
            );
    end component;

    signal A_reg                                 : typeABD_DSPregisters (amountScalingParameters+4 downto 0) := (others => (others => '0'));  --amountScalingParameters+1-1+3+1, because of vectorPosition and amount of phases and positionScaler
    signal B_reg                                 : typeABD_DSPregisters (amountScalingParameters+4 downto 0) := (others => (std_logic_vector(to_signed(1, 18))));
    signal D_reg                                 : typeABD_DSPregisters (amountScalingParameters+4 downto 0) := (others => (others => '0'));
    signal C_reg                                 : typeC_DSPregisters (amountScalingParameters+4 downto 0)   := (others => (others => '0'));
    signal P_reg                                 : typeC_DSPregisters (amountScalingParameters+4 downto 0)   := (others => (others => '0'));
    signal RDY                                   : std_logic;
    signal addra                                 : std_logic_vector (10 downto 0)                            := (others => '0');
    signal douta                                 : std_logic_vector (11 downto 0)                            := (others => '0');
    signal multipliedParamaters                  : std_logic_vector (17 downto 0)                            := (others => '0');
    --constant scaleFactor         : unsigned (17 downto 0)                                  := ((maxPositionValue+1)/(2048*2));
    constant fullSinusPhase                      : signed(17 downto 0)                                       := to_signed(4095, 18);
    --constant halfSinusPhase                      : signed (17 downto 0)                                      := fullSinusPhase/2;
    constant poleShiftSinusPhase                 : signed (17 downto 0)                                      := fullSinusPhase/3;
    constant movePhaseShift                      : signed (17 downto 0)                                      := fullSinusPhase/4;  --1/4 of the sinus phase, which is the most efficient phase offset for torque
    signal buffer_phaseSelectionHandler_A_reg    : typeABD_DSPregisters (2 downto 0);
    signal buffer_scalingParametersHandler_A_reg : typeABD_DSPregisters (amountScalingParameters-1 downto 0) := (others => (std_logic_vector(to_signed(0, 18))));
    signal buffer_scalingParametersHandler_B_reg : typeABD_DSPregisters (amountScalingParameters-1 downto 0) := (others => (std_logic_vector(to_signed(1, 18))));
begin

    calcProcessing : mpDSP
        generic map (
            amount     => amountScalingParameters+5,
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

    sin_data : BRAM_SIN
        port map(
            clka  => CLK,
            addra => addra,
            douta => douta
            );

    DSPRegistersHandler : process
        constant offsetDSP_scalingParametersHandler : integer := 5;
    begin
        wait until RISING_EDGE(CLK);
        A_reg(0) <= std_logic_vector(position);  --scaling actual position to value, which sinus in BRAM can handle
        B_reg(0) <= std_logic_vector(positionScaler);

        A_reg(1) <= std_logic_vector(vectorPosition);
        B_reg(1) <= std_logic_vector(movePhaseShift);
        C_reg(1) <= P_reg(0);
        --buffers from processes
        A_reg(2) <= buffer_phaseSelectionHandler_A_reg(0);
        A_reg(3) <= buffer_phaseSelectionHandler_A_reg(1);
        A_reg(4) <= buffer_phaseSelectionHandler_A_reg(2);

        for i in 0 to amountScalingParameters-1 loop
            A_reg(i+offsetDSP_scalingParametersHandler) <= buffer_scalingParametersHandler_A_reg(i);
            B_reg(i+offsetDSP_scalingParametersHandler) <= buffer_scalingParametersHandler_B_reg(i);
        end loop;
        --multiply sine value from BRAM by scaling parameters (e.g. PID regulator for current regulation)
        B_reg(2)     <= multipliedParamaters;
        B_reg(3)     <= multipliedParamaters;
        B_reg(4)     <= multipliedParamaters;
        --add half of sine value to every result for PWM
        D_reg(2) <= std_logic_vector(to_unsigned(2047, 18));
        D_reg(3) <= std_logic_vector(to_unsigned(2047, 18));
        D_reg(4) <= std_logic_vector(to_unsigned(2047, 18));
        --read results from DSP
        PWMOutput(0) <= signed(P_reg(2)(47) & P_reg(2)(29 downto 18)); --div by bits, because of scaling parameter, which includes 17 fractional bits and by 1 additional bit because of voltage standarization for PWM
        PWMOutput(1) <= signed(P_reg(3)(47) & P_reg(3)(29 downto 18));
        PWMOutput(2) <= signed(P_reg(4)(47) & P_reg(4)(29 downto 18));

    end process;

    phaseSelectionHandler : process
        variable vec0Position   : signed (17 downto 0);
        variable poleIndex      : integer range 2 downto 0 := 0;
        variable signSine       : std_logic                := '0';
        variable signSine_last  : std_logic;
        variable operationIndex : integer range 2 downto 0 := 0;
    begin
        wait until RISING_EDGE(CLK);

        case operationIndex is

            when 0 =>
                vec0Position := signed(P_reg(1)(47) & P_reg(1)(33 downto 17));  --extracting data, where (17 downto 0) is 18 bits of fractional, 47 is bit-sign and we are only interested in 17 bits of integer value

                case poleIndex is  --select the operation for specified "pole" of 3-phase motor
                    when 0 =>
                        poleIndex := 1;  --do nothing
                    when 1 =>
                        vec0Position := vec0Position + poleShiftSinusPhase;
                        poleIndex    := 2;
                    when 2 =>
                        vec0Position := vec0Position + resize(poleShiftSinusPhase*2, 18);
                        poleIndex    := 0;
                end case;

                operationIndex := 2;

            when 1 =>
                signSine_last := signSine;

                if (vec0Position > (fullSinusPhase + fullSinusPhase/2)) then
                    vec0Position := vec0Position - fullSinusPhase - fullSinusPhase/2;
                    signSine     := '1';
                elsif (vec0Position > (fullSinusPhase)) then
                    vec0Position := vec0Position - fullSinusPhase;
                    signSine     := '0';
                elsif (vec0Position > (fullSinusPhase/2)) then
                    vec0Position := vec0Position - fullSinusPhase/2;
                    signSine     := '1';
                else
                    vec0Position := vec0Position;
                    signSine     := '0';
                end if;

                operationIndex := 0;

            when 2 =>
                if signSine_last = '1' then
                    buffer_phaseSelectionHandler_A_reg(poleIndex) <= "111111" & (not(douta));  --copy readed data from BRAM to DSP, NEGATION to get "-" value of the sine
                else
                    buffer_phaseSelectionHandler_A_reg(poleIndex) <= "000000" & douta;  --copy readed data from BRAM to DSP
                end if;

                addra <= std_logic_vector(vec0Position(addra'range));

                operationIndex := 1;

        end case;
    end process phaseSelectionHandler;

    scalingParametersHandler : process
        constant offsetDSP : integer := 5;
    begin
        wait until RISING_EDGE(CLK);

        if amountScalingParameters > 1 then
            buffer_scalingParametersHandler_A_reg(0) <= std_logic_vector(scalingParameters(0));
            buffer_scalingParametersHandler_B_reg(0) <= std_logic_vector(scalingParameters(1));
            for i in 2 to amountScalingParameters loop
                buffer_scalingParametersHandler_A_reg(i-1) <= std_logic_vector(scalingParameters(i));
                buffer_scalingParametersHandler_B_reg(i-1) <= std_logic_vector(P_reg(i-1)(47) & P_reg(i+2-1)(34 downto 18));
            end loop;
            multipliedParamaters <= P_reg(amountScalingParameters-1+offsetDSP)(47) & P_reg(amountScalingParameters-1+offsetDSP)(34 downto 18);
        elsif amountScalingParameters = 1 then
            multipliedParamaters <= std_logic_vector(scalingParameters(0));
        else
            multipliedParamaters <= std_logic_vector(to_sfixed(1.0, 0, -17));
        end if;

    end process scalingParametersHandler;

end Behavioral;
