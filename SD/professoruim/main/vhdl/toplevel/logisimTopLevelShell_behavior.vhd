--==============================================================================
--== Logisim-evolution goes FPGA automatic generated VHDL code                ==
--== https://github.com/logisim-evolution/                                    ==
--==                                                                          ==
--==                                                                          ==
--== Project   : professoruim                                                 ==
--== Component : logisimTopLevelShell                                         ==
--==                                                                          ==
--==============================================================================

ARCHITECTURE platformIndependent OF logisimTopLevelShell IS 

   -----------------------------------------------------------------------------
   -- Here all used components are defined                                    --
   -----------------------------------------------------------------------------
      COMPONENT logisimTickGenerator
         GENERIC ( nrOfBits    : INTEGER;
                   reloadValue : INTEGER );
         PORT ( FPGAClock : IN  std_logic;
                FPGATick  : OUT std_logic );
      END COMPONENT;

      COMPONENT LogisimClockComponent
         GENERIC ( highTicks : INTEGER;
                   lowTicks  : INTEGER;
                   nrOfBits  : INTEGER;
                   phase     : INTEGER );
         PORT ( clockTick   : IN  std_logic;
                globalClock : IN  std_logic;
                clockBus    : OUT std_logic_vector( 4 DOWNTO 0 ) );
      END COMPONENT;

      COMPONENT main
         PORT ( RESET                : IN  std_logic;
                logisimClockTree0    : IN  std_logic_vector( 4 DOWNTO 0 );
                logisimOutputBubbles : OUT std_logic_vector( 32 DOWNTO 0 ) );
      END COMPONENT;

--------------------------------------------------------------------------------
-- All used signals are defined here                                          --
--------------------------------------------------------------------------------
   SIGNAL s_RESET                : std_logic;
   SIGNAL s_fpgaTick             : std_logic;
   SIGNAL s_logisimClockTree0    : std_logic_vector( 4 DOWNTO 0 );
   SIGNAL s_logisimOutputBubbles : std_logic_vector( 32 DOWNTO 0 );

BEGIN

   --------------------------------------------------------------------------------
   -- All signal adaptations are performed here                                  --
   --------------------------------------------------------------------------------
   L_7_Segment_Display_1_DecimalPoint <= s_logisimOutputBubbles(8);
   L_7_Segment_Display_1_Segment_A    <= s_logisimOutputBubbles(1);
   L_7_Segment_Display_1_Segment_B    <= s_logisimOutputBubbles(2);
   L_7_Segment_Display_1_Segment_C    <= s_logisimOutputBubbles(3);
   L_7_Segment_Display_1_Segment_D    <= s_logisimOutputBubbles(4);
   L_7_Segment_Display_1_Segment_E    <= s_logisimOutputBubbles(5);
   L_7_Segment_Display_1_Segment_F    <= s_logisimOutputBubbles(6);
   L_7_Segment_Display_1_Segment_G    <= s_logisimOutputBubbles(7);
   L_7_Segment_Display_2_DecimalPoint <= s_logisimOutputBubbles(32);
   L_7_Segment_Display_2_Segment_A    <= s_logisimOutputBubbles(25);
   L_7_Segment_Display_2_Segment_B    <= s_logisimOutputBubbles(26);
   L_7_Segment_Display_2_Segment_C    <= s_logisimOutputBubbles(27);
   L_7_Segment_Display_2_Segment_D    <= s_logisimOutputBubbles(28);
   L_7_Segment_Display_2_Segment_E    <= s_logisimOutputBubbles(29);
   L_7_Segment_Display_2_Segment_F    <= s_logisimOutputBubbles(30);
   L_7_Segment_Display_2_Segment_G    <= s_logisimOutputBubbles(31);
   L_7_Segment_Display_3_DecimalPoint <= s_logisimOutputBubbles(24);
   L_7_Segment_Display_3_Segment_A    <= s_logisimOutputBubbles(17);
   L_7_Segment_Display_3_Segment_B    <= s_logisimOutputBubbles(18);
   L_7_Segment_Display_3_Segment_C    <= s_logisimOutputBubbles(19);
   L_7_Segment_Display_3_Segment_D    <= s_logisimOutputBubbles(20);
   L_7_Segment_Display_3_Segment_E    <= s_logisimOutputBubbles(21);
   L_7_Segment_Display_3_Segment_F    <= s_logisimOutputBubbles(22);
   L_7_Segment_Display_3_Segment_G    <= s_logisimOutputBubbles(23);
   L_7_Segment_Display_4_DecimalPoint <= s_logisimOutputBubbles(16);
   L_7_Segment_Display_4_Segment_A    <= s_logisimOutputBubbles(9);
   L_7_Segment_Display_4_Segment_B    <= s_logisimOutputBubbles(10);
   L_7_Segment_Display_4_Segment_C    <= s_logisimOutputBubbles(11);
   L_7_Segment_Display_4_Segment_D    <= s_logisimOutputBubbles(12);
   L_7_Segment_Display_4_Segment_E    <= s_logisimOutputBubbles(13);
   L_7_Segment_Display_4_Segment_F    <= s_logisimOutputBubbles(14);
   L_7_Segment_Display_4_Segment_G    <= s_logisimOutputBubbles(15);
   PISCA_0                            <= s_logisimOutputBubbles(0);
   s_RESET                            <= RESET_0;

   --------------------------------------------------------------------------------
   -- The clock tree components are defined here                                 --
   --------------------------------------------------------------------------------
   BASE_0 : logisimTickGenerator
      GENERIC MAP ( nrOfBits    => 22,
                    reloadValue => 3125000 )
      PORT MAP ( FPGAClock => fpgaGlobalClock,
                 FPGATick  => s_fpgaTick );

   BASE_1 : LogisimClockComponent
      GENERIC MAP ( highTicks => 1,
                    lowTicks  => 1,
                    nrOfBits  => 1,
                    phase     => 1 )
      PORT MAP ( clockBus    => s_logisimClockTree0,
                 clockTick   => s_fpgaTick,
                 globalClock => fpgaGlobalClock );

   --------------------------------------------------------------------------------
   -- The toplevel component is connected here                                   --
   --------------------------------------------------------------------------------
   CIRCUIT_0 : main
      PORT MAP ( RESET                => s_RESET,
                 logisimClockTree0    => s_logisimClockTree0,
                 logisimOutputBubbles => s_logisimOutputBubbles );
END platformIndependent;
