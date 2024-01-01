library ieee;

library foc_lib;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use foc_lib.foc_types.all;
use ieee.fixed_pkg.all;


entity FOC_top is
    generic (
        --start AXI4
        C_S_AXI_DATA_WIDTH : integer := 32;
        C_S_AXI_ADDR_WIDTH : integer := 4;
        --end AXI4
        --start XADC comm
        addrXADC           : integer := 0
     --end XADC comm
        );
    port (
        --start AXI4
        S_AXI_ACLK    : in  std_logic;
        S_AXI_ARESETN : in  std_logic;
        S_AXI_AWADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_AWPROT  : in  std_logic_vector(2 downto 0);
        S_AXI_AWVALID : in  std_logic;
        S_AXI_AWREADY : out std_logic;
        S_AXI_WDATA   : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_WSTRB   : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        S_AXI_WVALID  : in  std_logic;
        S_AXI_WREADY  : out std_logic;
        S_AXI_BRESP   : out std_logic_vector(1 downto 0);
        S_AXI_BVALID  : out std_logic;
        S_AXI_BREADY  : in  std_logic;
        S_AXI_ARADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_ARPROT  : in  std_logic_vector(2 downto 0);
        S_AXI_ARVALID : in  std_logic;
        S_AXI_ARREADY : out std_logic;
        S_AXI_RDATA   : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_RRESP   : out std_logic_vector(1 downto 0);
        S_AXI_RVALID  : out std_logic;
        S_AXI_RREADY  : in  std_logic;
        --end AXI4
        --start XADC communication
        addrRegXADC   : in  std_logic_vector(6 downto 0)  := (others => '0');
        dataRegXADC   : in  std_logic_vector(15 downto 0) := (others => '0');
        --end XADC communication
        --FOC
        CLK           : in  std_logic;
        encoder       : in  std_logic_vector(1 downto 0);
        step          : in  std_logic;
        dir           : in  std_logic;
        PWM_CH_U      : out std_logic_vector(1 downto 0);
        PWM_CH_W      : out std_logic_vector(1 downto 0);
        PWM_CH_V      : out std_logic_vector(1 downto 0);
        dposition     : out std_logic_vector (12 downto 0);
        position      : out std_logic_vector (14 downto 0)
     --FOC end
        );
end FOC_top;

architecture Behavioral of FOC_top is

    signal sig_slv_reg0                   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');
    signal sig_slv_reg1                   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');
    signal sig_slv_reg2                   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');
    signal sig_slv_reg3                   : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');
    signal resultRegXADC                  : std_logic_vector(15 downto 0);
    constant valuesOutputAmount           : integer                                         := 8;
    constant valuesInputAmount            : integer                                         := 8;
    signal outputValues                   : valuesArrayAXI4 (valuesOutputAmount-1 downto 0);
    signal inputValues                    : valuesArrayAXI4 (valuesInputAmount-1 downto 0);
    signal dposition_out                  : signed(12 downto 0);
    signal position_out                   : signed (14 downto 0);
    signal currentSensorReading_bitVector : std_logic_vector(17 downto 0);

    component FOC_AXI4Lite_Slave is
        generic (
            C_S_AXI_DATA_WIDTH : integer := 32;
            C_S_AXI_ADDR_WIDTH : integer := 4
            );
        port (
            ext_slv_reg0  : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            ext_slv_reg1  : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            ext_slv_reg2  : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            ext_slv_reg3  : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            S_AXI_ACLK    : in  std_logic;
            S_AXI_ARESETN : in  std_logic;
            S_AXI_AWADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
            S_AXI_AWPROT  : in  std_logic_vector(2 downto 0);
            S_AXI_AWVALID : in  std_logic;
            S_AXI_AWREADY : out std_logic;
            S_AXI_WDATA   : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            S_AXI_WSTRB   : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
            S_AXI_WVALID  : in  std_logic;
            S_AXI_WREADY  : out std_logic;
            S_AXI_BRESP   : out std_logic_vector(1 downto 0);
            S_AXI_BVALID  : out std_logic;
            S_AXI_BREADY  : in  std_logic;
            S_AXI_ARADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
            S_AXI_ARPROT  : in  std_logic_vector(2 downto 0);
            S_AXI_ARVALID : in  std_logic;
            S_AXI_ARREADY : out std_logic;
            S_AXI_RDATA   : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            S_AXI_RRESP   : out std_logic_vector(1 downto 0);
            S_AXI_RVALID  : out std_logic;
            S_AXI_RREADY  : in  std_logic
            );
    end component FOC_AXI4Lite_Slave;

    component FOC_regXADC is
        generic(
            addr : integer
            );
        port (
            CLK           : in    std_logic;
            addrRegXADC   : in    std_logic_vector(6 downto 0)  := (others => '0');
            dataRegXADC   : in    std_logic_vector(15 downto 0) := (others => '0');
            resultRegXADC : inout std_logic_vector(15 downto 0)
            );
    end component;

    component FOC_AXI4RegistersHandler is
        generic (
            C_S_AXI_DATA_WIDTH : integer := 32;
            -- Width of S_AXI address bus
            C_S_AXI_ADDR_WIDTH : integer := 4;
            valuesInputAmount  : integer := 16;
            valuesOutputAmount : integer := 16
            );
        port (
            CLK          : in  std_logic;
            ext_slv_reg0 : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);  --receive configuration
            ext_slv_reg1 : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);  --receive addres of the paramters, which need to be readen
            ext_slv_reg2 : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);  --sends value, which are on the addr from reg1
            ext_slv_reg3 : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);  --sends actual status of the regulator (e.g. errors)
            inputValues  : out valuesArrayAXI4 (valuesInputAmount-1 downto 0);
            outputValues : in  valuesArrayAXI4 (valuesOutputAmount-1 downto 0)
            );
    end component;

    component FOC_core is
        generic (
            sampling_time       : real                 := 0.000000064;  --64ns
            step_scale          : integer              := 16;
            position_histeresis : integer              := 8;
            pwm_period          : integer              := 4095;
            full_rotate_pulses  : integer              := 4095;
            fracBits            : integer              := 8;
            intBits             : integer              := 17-fracBits;
            max_p_pid           : SFIXED(0 downto -17) := to_sfixed(0.9999, 0, -17);
            min_p_pid           : SFIXED(0 downto -17) := to_sfixed(-0.9999, 0, -17);
            max_i_pid           : SFIXED(0 downto -17) := to_sfixed(0.9999, 0, -17);
            min_i_pid           : SFIXED(0 downto -17) := to_sfixed(-0.9999, 0, -17);
            max_d_pid           : SFIXED(0 downto -17) := to_sfixed(0.9999, 0, -17);
            min_d_pid           : SFIXED(0 downto -17) := to_sfixed(-0.9999, 0, -17);
            max_pid_pid         : SFIXED(0 downto -17) := to_sfixed(0.9999, 0, -17);
            min_pid_pid         : SFIXED(0 downto -17) := to_sfixed(-0.9999, 0, -17)
            );
        --  Port ( );
        port (
            --TESTING PURPOSES
            S_AXI_ACLK                       : in  std_logic;
            -- data input
            en                              : in  std_logic;
            n_res                           : in  std_logic;
            CLK                             : in  std_logic;
            currentSensorReading            : in  sfixed(0 downto -17);
            encoder                         : in  std_logic_vector(1 downto 0);
            dir                             : in  std_logic;
            step                            : in  std_logic;
            kp                              : in  sFIXED (intBits downto -fracBits);
            ki                              : in  sFIXED (intBits downto -fracBits);
            kd                              : in  sFIXED (intBits downto -fracBits);
            current_setpoint_move           : in  sfixed (0 downto -17);  --tbd change to unsigned
            position_calibration            : in  signed (14 downto 0);
            position_calibration_set_signal : in  std_logic;
            -- data output
            dposition_out                   : out signed (12 downto 0);
            position_out                    : out signed (14 downto 0);
            PWM_CH_U                        : out std_logic_vector(1 downto 0);
            PWM_CH_W                        : out std_logic_vector(1 downto 0);
            PWM_CH_V                        : out std_logic_vector(1 downto 0)
            );
    end component;

begin

    main_AXI4 : FOC_AXI4Lite_Slave
        generic map (
            C_S_AXI_DATA_WIDTH => C_S_AXI_DATA_WIDTH,
            C_S_AXI_ADDR_WIDTH => C_S_AXI_ADDR_WIDTH
            )
        port map (
            ext_slv_reg0  => sig_slv_reg0,
            ext_slv_reg1  => sig_slv_reg1,
            ext_slv_reg2  => sig_slv_reg2,
            ext_slv_reg3  => sig_slv_reg3,
            S_AXI_ACLK    => s_axi_aclk,
            S_AXI_ARESETN => s_axi_aresetn,
            S_AXI_AWADDR  => s_axi_awaddr,
            S_AXI_AWPROT  => s_axi_awprot,
            S_AXI_AWVALID => s_axi_awvalid,
            S_AXI_AWREADY => s_axi_awready,
            S_AXI_WDATA   => s_axi_wdata,
            S_AXI_WSTRB   => s_axi_wstrb,
            S_AXI_WVALID  => s_axi_wvalid,
            S_AXI_WREADY  => s_axi_wready,
            S_AXI_BRESP   => s_axi_bresp,
            S_AXI_BVALID  => s_axi_bvalid,
            S_AXI_BREADY  => s_axi_bready,
            S_AXI_ARADDR  => s_axi_araddr,
            S_AXI_ARPROT  => s_axi_arprot,
            S_AXI_ARVALID => s_axi_arvalid,
            S_AXI_ARREADY => s_axi_arready,
            S_AXI_RDATA   => s_axi_rdata,
            S_AXI_RRESP   => s_axi_rresp,
            S_AXI_RVALID  => s_axi_rvalid,
            S_AXI_RREADY  => s_axi_rready
            );

    main_regXADC : FOC_regXADC
        generic map (
            addr => addrXADC
            )
        port map (
            CLK           => S_AXI_ACLK,
            addrRegXADC   => addrRegXADC,
            dataRegXADC   => dataRegXADC,
            resultRegXADC => resultRegXADC
            );

    main_AXI4RegistersHandler : FOC_AXI4RegistersHandler
        generic map (
            C_S_AXI_DATA_WIDTH => 32,
            -- Width of S_AXI address bus
            C_S_AXI_ADDR_WIDTH => 4,
            valuesInputAmount  => 8,
            valuesOutputAmount => 8
            )
        port map (
            CLK          => S_AXI_ACLK,
            ext_slv_reg0 => sig_slv_reg0,  --receive configuration
            ext_slv_reg1 => sig_slv_reg1,  --receive addres of the paramters, which need to be readen
            ext_slv_reg2 => sig_slv_reg2,  --sends value, which are on the addr from reg1
            ext_slv_reg3 => sig_slv_reg3,  --sends actual status of the regulator (e.g. errors)
            inputValues  => inputValues,
            outputValues => outputValues
            );

    FOC : FOC_core
        generic map (
            sampling_time       => 0.000000064,  --64ns
            step_scale          => 16,
            position_histeresis => 8,
            pwm_period          => 4095,
            full_rotate_pulses  => 4095,
            fracBits            => 17,
            intBits             => 0,
            max_p_pid           => to_sfixed(0.9999, 0, -17),
            min_p_pid           => to_sfixed(-0.9999, 0, -17),
            max_i_pid           => to_sfixed(0.9999, 0, -17),
            min_i_pid           => to_sfixed(-0.9999, 0, -17),
            max_d_pid           => to_sfixed(0.9999, 0, -17),
            min_d_pid           => to_sfixed(-0.9999, 0, -17),
            max_pid_pid         => to_sfixed(0.9999, 0, -17),
            min_pid_pid         => to_sfixed(0, 0, -17)
            )
        port map (
            --TESTING PURPOSES
            S_AXI_ACLK                       => S_AXI_ACLK,
            en                              => '1',
            n_res                           => '0',
            CLK                             => CLK,
            currentSensorReading            => vecToSfixed(currentSensorReading_bitVector, -17),
            encoder                         => encoder,
            dir                             => dir,
            step                            => step,
            kp                              => vecToSfixed(inputValues(1), -17),
            ki                              => vecToSfixed(inputValues(2), -17),
            kd                              => vecToSfixed(inputValues(3), -17),
            current_setpoint_move           => vecToSfixed(inputValues(0), -17),
            position_calibration            => signed(inputValues(4)(14 downto 0)),
            position_calibration_set_signal => inputValues(5)(0),
            -- data output
            dposition_out                   => dposition_out,
            position_out                    => position_out,
            PWM_CH_U                        => PWM_CH_U,
            PWM_CH_W                        => PWM_CH_W,
            PWM_CH_V                        => PWM_CH_V
            );

    position                                     <= std_logic_vector(position_out);
    dposition                                    <= std_logic_vector(dposition_out);
    currentSensorReading_bitVector(15 downto 0)  <= resultRegXADC;
    currentSensorReading_bitVector(17 downto 16) <= "00";
    outputValues(1)(12 downto 0)                 <= std_logic_vector(dposition_out);
    outputValues(2)(14 downto 0)                 <= std_logic_vector(position_out);


end Behavioral;
