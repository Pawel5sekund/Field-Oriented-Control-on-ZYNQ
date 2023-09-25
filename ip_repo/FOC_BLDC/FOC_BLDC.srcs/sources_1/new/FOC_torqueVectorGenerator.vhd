library ieee;
library foc_lib;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use foc_lib.foc_types.all;
use ieee.fixed_pkg.all;


entity FOC_torqueVectorGenerator is
    generic(
        amountScalingParameters : integer              := 1;
        maxPositionValue : integer := 4095
        );
    port (
        CLK               : in std_logic;
        position          : in signed (17 downto 0);
        vectorPosition    : in sfixed (0 downto -17);
        scalingParameters : in scalingParametersArray (amountScalingParameters-1 downto 0)
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
            P_reg : out typeC_DSPregisters (amount-1 downto 0)
            );
    end component;

    component BRAM_SIN
        port (
            clka  : in  std_logic;
            addra : in  std_logic_vector(10 downto 0);
            douta : out std_logic_vector(11 downto 0)
            );
    end component;

    signal A_reg : typeABD_DSPregisters (amountScalingParameters downto 0);  --amountScalingParameters+1-1, because of vectorPosition
    signal B_reg : typeABD_DSPregisters (amountScalingParameters downto 0);
    signal D_reg : typeABD_DSPregisters (amountScalingParameters downto 0) := others  => (others => '0');
    signal C_reg : typeC_DSPregisters (amountScalingParameters downto 0);
    signal P_reg : typeC_DSPregisters (amountScalingParameters downto 0);
    signal addra : std_logic_vector (10 downto 0)                          := (others => '0');
    signal douta : std_logic_vector (11 downto 0)                          := (others => '0');
    constant pulsesVectorOffset      : unsigned (17 downto 0) := to_signed(1023, 18); --1/4 of the sinus phase, which is the most efficient phase offset for torque
    constant scaleFactor : unsigned (17 downto 0) := ((maxPositionValue+1)/(2048*2));
    constant fullSinusPhase : signed(12 downto 0) := 2048;
    constant poleShiftSinusPhase : signed (12 downto 0) := 2048/3;
begin

    calcProcessing : mpDSP
        generic map (
            amount     => 4,
            waitCycles => 3
            )
        port map (
            CLK   => CLK,
            A_reg => A_reg,
            B_reg => B_reg,
            D_reg => D_reg,
            C_reg => C_reg,
            P_reg => P_reg
            );

    sin_data : BRAM_SIN
        port map(
            clka  => CLK,
            addra => addra,
            douta => douta
            );

    A_reg(0) <= std_logic_vector(vectorPosition);
    B_reg(0) <= std_logic_vector(pulsesVectorOffset);
    C_reg(0) <= std_logic_vector(resize(position, C_reg(0)'length));

    phaseSelector : process
        variable phase : unsigned (10 downto 0);
        variable DSP_output : signed (12 downto 0);
        VARIABLE index            : integer RANGE 2 DOWNTO 0 := 0;
    begin
        wait until RISING_EDGE(CLK);

        DSP_output := signed(std_logic_vector(P_reg(0)(47) & P_reg(0)(DSP_output'left-1 downto vectorPosition'length-1)));

        if index = 0 then

        elsif index = 1 then

        elsif 
        
        

        

    end process phaseSelector;




end Behavioral;
