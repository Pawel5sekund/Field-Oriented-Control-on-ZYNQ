----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/24/2023 04:38:54 PM
-- Design Name: 
-- Module Name: mpDSP - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
library foc_lib;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use foc_lib.foc_types.all;


entity mpDSP is
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
end mpDSP;

architecture Behavioral of mpDSP is

    component mpDSP_DSP_macro is        --(A+D)*B+C
        port (
            CLK      : in  std_logic;
            CE       : in  std_logic;
            SCLR     : in  std_logic;
            A        : in  std_logic_vector (17 downto 0);
            B        : in  std_logic_vector (17 downto 0);
            C        : in  std_logic_vector (47 downto 0);
            D        : in  std_logic_vector (17 downto 0);
            CARRYOUT : out std_logic;
            P        : out std_logic_vector (47 downto 0)
            );
    end component;

    --DSP's signals
    signal CE               : std_logic                      := '0';
    signal SCLR             : std_logic                      := '0';
    signal A                : std_logic_vector (17 downto 0) := (others => '0');
    signal B                : std_logic_vector (17 downto 0) := (others => '0');
    signal C                : std_logic_vector (47 downto 0) := (others => '0');
    signal D                : std_logic_vector (17 downto 0) := (others => '0');
    signal P                : std_logic_vector (47 downto 0) := (others => '0');
    signal CARRYOUT         : std_logic;
    --other signals
    --constants
    constant halfWaitCycles : integer                        := waitCycles/2;
begin

    DSP : mpDSP_DSP_macro
        port map (
            CLK      => CLK,
            CE       => CE,
            SCLR     => SCLR,
            A        => A,
            B        => B,
            C        => C,
            D        => D,
            CARRYOUT => CARRYOUT,
            P        => P
            );
    process
        variable operationSelector     : integer range 0 to 2      := 0;
        variable cyclesCounterSend     : integer range 0 to 15     := 0;
        variable cyclesCounterReceive  : integer range 0 to 15     := 0;
        variable regSelectorSend       : integer range 0 to amount := 0;
        variable regSelectorReceive    : integer range 0 to amount := 0;
        variable startReceivingResults : std_logic                 := '0';
        variable firstReceiveCycle     : std_logic                 := '0';
    begin
        wait until RISING_EDGE(CLK);

        case operationSelector is
            when 0 =>                   --reset of DSP
                CE   <= '1';
                SCLR <= '0';
                A    <= std_logic_vector(to_signed(5, A'length));
                B    <= std_logic_vector(to_signed(10, B'length));
                C    <= std_logic_vector(to_signed(15, C'length));
                D    <= std_logic_vector(to_signed(20, D'length));
                if P = std_logic_vector(to_signed(265, P'length)) then
                    operationSelector := 1;
                end if;
            when 1 =>  --first result of calculation with known value will trigger the start of receiving values after every wait cycles
                CE                <= '1';
                SCLR              <= '0';
                A                 <= std_logic_vector(to_signed(1, A'length));
                B                 <= std_logic_vector(to_signed(2, B'length));
                C                 <= std_logic_vector(to_signed(3, C'length));
                D                 <= std_logic_vector(to_signed(4, D'length));
                operationSelector := 2;
            when 2 =>                   --finally make some calcs
                CE   <= '1';
                SCLR <= '0';

                case cyclesCounterSend is
                    when waitCycles =>
                        cyclesCounterSend := 0;
                        regSelectorSend   := regSelectorSend + 1;
                        if regSelectorSend = amount then
                            regSelectorSend := 0;
                        end if;
                    when others =>
                        A                 <= A_reg(regSelectorSend);  --send selected data from queue
                        B                 <= B_reg(regSelectorSend);
                        C                 <= C_reg(regSelectorSend);
                        D                 <= D_reg(regSelectorSend);
                        cyclesCounterSend := cyclesCounterSend + 1;
                end case;

                case startReceivingResults xor firstReceiveCycle is  --don't work without trigger and during first read time
                    when '1' =>
                        case cyclesCounterReceive is
                            when waitCycles =>
                                cyclesCounterReceive := 0;
                            when halfWaitCycles =>
                                P_reg(regSelectorReceive) <= P;
                                regSelectorReceive        := regSelectorReceive + 1;
                                if regSelectorReceive = amount then
                                    regSelectorReceive := 0;
                                end if;
                                cyclesCounterReceive := cyclesCounterReceive + 1;
                            when others =>
                                cyclesCounterReceive := cyclesCounterReceive + 1;
                        end case;
                    when '0' =>
                        firstReceiveCycle := '0';  --do nothing, turned off, but when it's first cycle - overwrite the first-cycle-flag
                        if P = std_logic_vector(to_signed(13, P'length)) then  --this is the trigger to start receiving values
                            startReceivingResults := '1';
                            firstReceiveCycle     := '1';  --on the first cycle in the receive register (P) in DSP is dummy-data, which is used in this section for starting normal receiving algorythm, but this is not the result from calculation, so the first receive need to be omitted
                        end if;
                end case;
        end case;

    end process;
end Behavioral;
