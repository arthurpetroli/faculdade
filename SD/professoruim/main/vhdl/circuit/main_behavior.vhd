--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : professoruim                                                 ==
--== Component : main                                                         ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF main IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------

      COMPONENT bcd_7seg
         PORT ( entra : IN  std_logic_vector( 3 DOWNTO 0 );
                sai   : OUT std_logic_vector( 6 DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT count4
         PORT ( clk  : IN  std_logic;
                rst  : IN  std_logic;
                carr : OUT std_logic;
                q    : OUT std_logic_vector( 3 DOWNTO 0 ) );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_logisimBus11 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus16 : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_logisimBus32 : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_logisimBus33 : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_logisimBus38 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus42 : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimBus44 : std_logic_vector( 3 DOWNTO 0 );
   SIGNAL s_logisimBus9  : std_logic_vector( 6 DOWNTO 0 );
   SIGNAL s_logisimNet0  : std_logic;
   SIGNAL s_logisimNet1  : std_logic;
   SIGNAL s_logisimNet10 : std_logic;
   SIGNAL s_logisimNet12 : std_logic;
   SIGNAL s_logisimNet13 : std_logic;
   SIGNAL s_logisimNet14 : std_logic;
   SIGNAL s_logisimNet15 : std_logic;
   SIGNAL s_logisimNet17 : std_logic;
   SIGNAL s_logisimNet18 : std_logic;
   SIGNAL s_logisimNet19 : std_logic;
   SIGNAL s_logisimNet2  : std_logic;
   SIGNAL s_logisimNet20 : std_logic;
   SIGNAL s_logisimNet21 : std_logic;
   SIGNAL s_logisimNet22 : std_logic;
   SIGNAL s_logisimNet23 : std_logic;
   SIGNAL s_logisimNet24 : std_logic;
   SIGNAL s_logisimNet25 : std_logic;
   SIGNAL s_logisimNet26 : std_logic;
   SIGNAL s_logisimNet27 : std_logic;
   SIGNAL s_logisimNet28 : std_logic;
   SIGNAL s_logisimNet29 : std_logic;
   SIGNAL s_logisimNet3  : std_logic;
   SIGNAL s_logisimNet30 : std_logic;
   SIGNAL s_logisimNet31 : std_logic;
   SIGNAL s_logisimNet34 : std_logic;
   SIGNAL s_logisimNet35 : std_logic;
   SIGNAL s_logisimNet36 : std_logic;
   SIGNAL s_logisimNet37 : std_logic;
   SIGNAL s_logisimNet39 : std_logic;
   SIGNAL s_logisimNet4  : std_logic;
   SIGNAL s_logisimNet40 : std_logic;
   SIGNAL s_logisimNet41 : std_logic;
   SIGNAL s_logisimNet43 : std_logic;
   SIGNAL s_logisimNet5  : std_logic;
   SIGNAL s_logisimNet6  : std_logic;
   SIGNAL s_logisimNet7  : std_logic;
   SIGNAL s_logisimNet8  : std_logic;

BEGIN

   --------------------------------------------------------------------------------
   -- All clock generator connections are defined here                           --
   --------------------------------------------------------------------------------
   s_logisimNet8 <= logisimClockTree0(0);

   --------------------------------------------------------------------------------
   -- Here all input connections are defined                                     --
   --------------------------------------------------------------------------------
   s_logisimNet4 <= RESET;

   --------------------------------------------------------------------------------
   -- Here all in-lined components are defined                                   --
   --------------------------------------------------------------------------------

   -- LED: PISCA
   logisimOutputBubbles(0) <= s_logisimNet8;

   -- Display de 7-segmentos: L_7_Segment_Display_1
   logisimOutputBubbles(1) <= s_logisimBus11(6);
   logisimOutputBubbles(2) <= s_logisimBus11(5);
   logisimOutputBubbles(3) <= s_logisimBus11(4);
   logisimOutputBubbles(4) <= s_logisimBus11(3);
   logisimOutputBubbles(5) <= s_logisimBus11(2);
   logisimOutputBubbles(6) <= s_logisimBus11(1);
   logisimOutputBubbles(7) <= s_logisimBus11(0);
   logisimOutputBubbles(8) <= s_logisimNet41;

   -- Display de 7-segmentos: L_7_Segment_Display_4
   logisimOutputBubbles(10) <= s_logisimBus9(5);
   logisimOutputBubbles(11) <= s_logisimBus9(4);
   logisimOutputBubbles(12) <= s_logisimBus9(3);
   logisimOutputBubbles(13) <= s_logisimBus9(2);
   logisimOutputBubbles(14) <= s_logisimBus9(1);
   logisimOutputBubbles(15) <= s_logisimBus9(0);
   logisimOutputBubbles(16) <= s_logisimNet39;
   logisimOutputBubbles(9)  <= s_logisimBus9(6);

   -- Display de 7-segmentos: L_7_Segment_Display_3
   logisimOutputBubbles(17) <= s_logisimBus42(6);
   logisimOutputBubbles(18) <= s_logisimBus42(5);
   logisimOutputBubbles(19) <= s_logisimBus42(4);
   logisimOutputBubbles(20) <= s_logisimBus42(3);
   logisimOutputBubbles(21) <= s_logisimBus42(2);
   logisimOutputBubbles(22) <= s_logisimBus42(1);
   logisimOutputBubbles(23) <= s_logisimBus42(0);
   logisimOutputBubbles(24) <= s_logisimNet40;

   -- Display de 7-segmentos: L_7_Segment_Display_2
   logisimOutputBubbles(25) <= s_logisimBus38(6);
   logisimOutputBubbles(26) <= s_logisimBus38(5);
   logisimOutputBubbles(27) <= s_logisimBus38(4);
   logisimOutputBubbles(28) <= s_logisimBus38(3);
   logisimOutputBubbles(29) <= s_logisimBus38(2);
   logisimOutputBubbles(30) <= s_logisimBus38(1);
   logisimOutputBubbles(31) <= s_logisimBus38(0);
   logisimOutputBubbles(32) <= s_logisimNet43;

   -- Constante
    s_logisimNet40  <=  '1';


   -- Constante
    s_logisimNet39  <=  '1';


   -- Constante
    s_logisimNet43  <=  '1';


   -- Constante
    s_logisimNet41  <=  '1';


   --------------------------------------------------------------------------------
   -- Here all normal components are defined                                     --
   --------------------------------------------------------------------------------
   bcd_7seg_1 : bcd_7seg
      PORT MAP ( entra => s_logisimBus16(3 DOWNTO 0),
                 sai   => s_logisimBus42(6 DOWNTO 0) );

   count4_1 : count4
      PORT MAP ( carr => s_logisimNet10,
                 clk  => s_logisimNet8,
                 q    => s_logisimBus16(3 DOWNTO 0),
                 rst  => s_logisimNet4 );

   count4_3 : count4
      PORT MAP ( carr => s_logisimNet1,
                 clk  => s_logisimNet34,
                 q    => s_logisimBus44(3 DOWNTO 0),
                 rst  => s_logisimNet4 );

   count4_2 : count4
      PORT MAP ( carr => s_logisimNet34,
                 clk  => s_logisimNet10,
                 q    => s_logisimBus32(3 DOWNTO 0),
                 rst  => s_logisimNet4 );

   count4_4 : count4
      PORT MAP ( carr => OPEN,
                 clk  => s_logisimNet1,
                 q    => s_logisimBus33(3 DOWNTO 0),
                 rst  => s_logisimNet4 );

   bcd_7seg_3 : bcd_7seg
      PORT MAP ( entra => s_logisimBus44(3 DOWNTO 0),
                 sai   => s_logisimBus38(6 DOWNTO 0) );

   bcd_7seg_2 : bcd_7seg
      PORT MAP ( entra => s_logisimBus32(3 DOWNTO 0),
                 sai   => s_logisimBus9(6 DOWNTO 0) );

   bcd_7seg_4 : bcd_7seg
      PORT MAP ( entra => s_logisimBus33(3 DOWNTO 0),
                 sai   => s_logisimBus11(6 DOWNTO 0) );


END platformIndependent;
