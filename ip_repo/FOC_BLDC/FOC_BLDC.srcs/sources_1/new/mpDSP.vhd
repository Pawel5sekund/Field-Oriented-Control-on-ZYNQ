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
        waitCycles : integer := 3;
        repeatCC   : integer := 8  --repeating CC after X full calculation cycles
        );
    port (
        CLK   : in  std_logic;
        A_reg : in  typeABD_DSPregisters (amount downto 0);
        B_reg : in  typeABD_DSPregisters (amount downto 0);
        D_reg : in  typeABD_DSPregisters (amount downto 0);
        C_reg : in  typeC_DSPregisters (amount downto 0);
        P_reg : out typeC_DSPregisters (amount downto 0)
        );
end mpDSP;

architecture Behavioral of mpDSP is

    component mpDSP_DSP_macro is
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
    signal CE                : std_logic                      := '0';
    signal SCLR              : std_logic                      := '0';
    signal A                 : std_logic_vector (17 downto 0) := (others => '0');
    signal B                 : std_logic_vector (17 downto 0) := (others => '0');
    signal C                 : std_logic_vector (47 downto 0) := (others => '0');
    signal D                 : std_logic_vector (17 downto 0) := (others => '0');
    signal P                 : std_logic_vector (47 downto 0) := (others => '0');
    signal CARRYOUT          : std_logic;
    --cycles calculator
    signal CE_CC             : std_logic                      := '0';
    signal SCLR_CC           : std_logic                      := '0';
    signal A_CC              : std_logic_vector (17 downto 0) := (others => '0');
    signal B_CC              : std_logic_vector (17 downto 0) := (others => '0');
    signal C_CC              : std_logic_vector (47 downto 0) := (others => '0');
    signal D_CC              : std_logic_vector (17 downto 0) := (others => '0');
    --main calulation process
    signal CE_MCP            : std_logic                      := '0';
    signal SCLR_MCP          : std_logic                      := '0';
    signal A_MCP             : std_logic_vector (17 downto 0) := (others => '0');
    signal B_MCP             : std_logic_vector (17 downto 0) := (others => '0');
    signal C_MCP             : std_logic_vector (47 downto 0) := (others => '0');
    signal D_MCP             : std_logic_vector (17 downto 0) := (others => '0');
    --other signals
    signal calculationCycles : integer                        := 0;
    signal EN_Calculations   : std_logic                      := '0';
    signal TRIG_calcCycles   : std_logic                      := '1';
    signal stateMCPCalcs : integer := 0;
    signal stateMCPWaits : integer := 0;
    --signal TRIG_END_calcCycles   : std_logic                      := '0';
    constant halfWaitCycles  : integer                        := waitCycles/2;
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

    MCPStateDecoder: process
        variable cycleCounter        : integer   := 0;
        variable waitCycleCounter    : integer   := 0;
    begin
        wait until RISING_EDGE(CLK);
        case EN_Calculations is
            when '1' =>
                if waitCycleCounter = waitCycles then
                    stateMCPWaits <= 1;
                    waitCycleCounter := 0;
                else
                    stateMCPWaits <= 0;
                    waitCycleCounter := waitCycleCounter + 1;
                end if;

                if cycleCounter = (calculationCycles+waitCycles+halfWaitCycles) then
                    stateMCPCalcs <= 1;
                    cycleCounter := cycleCounter + 1;
                elsif cycleCounter = (calculationCycles+2*waitCycles) then
                    cycleCounter := 0;
                    stateMCPCalcs <= 2;
                else
                    stateMCPCalcs <= 0;
                end if;

            when '0' =>
        end case;
    end process;

    MCP : process
        variable dataNumberSend      : integer   := 0;
        variable dataNumberReceive   : integer   := 0;
        variable repeatCCCounter     : integer   := 0;
        variable lastEN_Calculations : std_logic := '0';
    begin
        wait until RISING_EDGE(CLK);

        if ((lastEN_Calculations xor EN_Calculations) and EN_Calculations) = '1' then
            TRIG_calcCycles <= '0';
        end if;
        lastEN_Calculations := EN_Calculations;

        case EN_Calculations is
            when '1' =>
                case stateMCPWaits is  --send data and wait to be sure that it'll be transfered to DSP registers (pipelining)
                    when 1 =>
                        dataNumberSend := dataNumberSend + 1;
                        if dataNumberSend = amount then
                            dataNumberSend := 0;
                        end if;                       
                    when 0 =>
                        CE_MCP   <= '1';
                        SCLR_MCP <= '0';
                        A_MCP    <= A_reg(dataNumberSend);
                        B_MCP    <= B_reg(dataNumberSend);
                        C_MCP    <= C_reg(dataNumberSend);
                        D_MCP    <= D_reg(dataNumberSend);
                    when others =>
                        --do nothing
                end case;

                case stateMCPCalcs is
                    when 1 =>
                        P_Reg(dataNumberReceive) <= P;
                    when 2 =>
                        dataNumberReceive := dataNumberReceive + 1;
                        if dataNumberReceive = amount then
                            dataNumberReceive := 0;
                            repeatCCCounter   := repeatCCCounter + 1;
                            if repeatCCCounter = repeatCC then
                                repeatCCCounter := 0;
                                TRIG_calcCycles <= '1';
                            end if;
                        end if;
                    when others =>
                        --do nothing
                end case;

            when '0' =>
        --do nothing, turned off
        end case;
    end process MCP;

    CC : process
        variable cycleCounter : integer := -1;
    begin
        wait until RISING_EDGE(CLK);

        case TRIG_calcCycles is
            when '0' =>
            --doNothing, turned off
            when '1' =>
                case cycleCounter is
                    when -3 | -2 | -1 =>
                        CE_CC        <= '1';
                        SCLR_CC      <= '1';
                        cycleCounter := cycleCounter + 1;
                    when others =>
                        CE_CC   <= '1';
                        SCLR_CC <= '0';
                        A_CC    <= std_logic_vector(to_signed(1, A_CC'length));  --send int 1
                        B_CC    <= std_logic_vector(to_signed(1, B_CC'length));  --send int 1
                        C_CC    <= std_logic_vector(to_signed(1, C_CC'length));  --send int 1
                        D_CC    <= std_logic_vector(to_signed(1, D_CC'length));  --send int 1

                        cycleCounter := cycleCounter + 1;
                        if signed(P) = to_signed(2, P'length) then  --the result should be (A+D)*B+C = (1+1)*1+1 = 2
                            calculationCycles <= cycleCounter;
                            EN_Calculations   <= '1';
                        --TRIG_END_calcCycles <= '1';
                        else
                            EN_Calculations <= '0';
                        end if;
                end case;
        end case;
    end process CC;

    --DSP multiplexing between MCP and CC
    A <= A_CC when EN_Calculations = '0' else
         A_MCP when EN_Calculations = '1';

    B <= B_CC when EN_Calculations = '0' else
         B_MCP when EN_Calculations = '1';

    C <= C_CC when EN_Calculations = '0' else
         C_MCP when EN_Calculations = '1';

    D <= D_CC when EN_Calculations = '0' else
         D_MCP when EN_Calculations = '1';

    CE <= CE_CC when EN_Calculations = '0' else
          CE_MCP when EN_Calculations = '1';

    SCLR <= SCLR_CC when EN_Calculations = '0' else
            SCLR_MCP when EN_Calculations = '1';

end Behavioral;
