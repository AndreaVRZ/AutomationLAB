CoDeSys+Y   �                    @        @   2.3.9.33�    @   ConfigExtension�          CommConfigEx7             CommConfigExEnd   ME�                  IB                    % QB                    %   ME_End   CM�      CM_End   CT�   ��������   CT_End   ConfigExtensionEnd?    @                                     �kW +    @      ��������             9�FW        cT   @   D   C:\PROGRAM FILES (X86)\3S SOFTWARE\CODESYS V2.3\LIBRARY\STANDARD.LIB          CONCAT               STR1               ��              STR2               ��                 CONCAT                                         �kW  �   ����           CTD           M             ��           Variable for CD Edge Detection      CD            ��           Count Down on rising edge    LOAD            ��	           Load Start Value    PV           ��
           Start Value       Q            ��           Counter reached 0    CV           ��           Current Counter Value             �kW  �   ����           CTU           M             ��            Variable for CU Edge Detection       CU            ��       
    Count Up    RESET            ��	           Reset Counter to 0    PV           ��
           Counter Limit       Q            ��           Counter reached the Limit    CV           ��           Current Counter Value             �kW  �   ����           CTUD           MU             ��            Variable for CU Edge Detection    MD             ��            Variable for CD Edge Detection       CU            ��
       
    Count Up    CD            ��           Count Down    RESET            ��           Reset Counter to Null    LOAD            ��           Load Start Value    PV           ��           Start Value / Counter Limit       QU            ��           Counter reached Limit    QD            ��           Counter reached Null    CV           ��           Current Counter Value             �kW  �   ����           DELETE               STR               ��              LEN           ��	              POS           ��
                 DELETE                                         �kW  �   ����           F_TRIG           M             ��                 CLK            ��           Signal to detect       Q            ��	           Edge detected             �kW  �   ����           FIND               STR1               ��	              STR2               ��
                 FIND                                     �kW  �   ����           INSERT               STR1               ��	              STR2               ��
              POS           ��                 INSERT                                         �kW  �   ����           LEFT               STR               ��              SIZE           ��                 LEFT                                         �kW  �   ����           LEN               STR               ��                 LEN                                     �kW  �   ����           MID               STR               ��              LEN           ��	              POS           ��
                 MID                                         �kW  �   ����           R_TRIG           M             ��                 CLK            ��           Signal to detect       Q            ��	           Edge detected             �kW  �   ����           REPLACE               STR1               ��	              STR2               ��
              L           ��              P           ��                 REPLACE                                         �kW  �   ����           RIGHT               STR               ��              SIZE           ��                 RIGHT                                         �kW  �   ����           RS               SET            ��              RESET1            ��	                 Q1            ��                       �kW  �   ����           RTC           M             ��              DiffTime            ��                 EN            ��              PDT           ��                 Q            ��              CDT           ��                       �kW  �   ����           SEMA           X             ��                 CLAIM            ��
              RELEASE            ��                 BUSY            ��                       �kW  �   ����           SR               SET1            ��              RESET            ��                 Q1            ��                       �kW  �   ����           TOF           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with falling edge, resets timer with rising edge    PT           ��           time to pass, before Q is set       Q            ��       2    is FALSE, PT seconds after IN had a falling edge    ET           ��           elapsed time             �kW  �   ����           TON           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with rising edge, resets timer with falling edge    PT           ��           time to pass, before Q is set       Q            ��       0    is TRUE, PT seconds after IN had a rising edge    ET           ��           elapsed time             �kW  �   ����           TP        	   StartTime            ��           internal variable       IN            ��       !    Trigger for Start of the Signal    PT           ��       '    The length of the High-Signal in 10ms       Q            ��           The pulse    ET           ��       &    The current phase of the High-Signal             �kW  �   ����    @   C:\PROGRAM FILES (X86)\3S SOFTWARE\CODESYS V2.3\LIBRARY\UTIL.LIB       
   BCD_TO_INT               B           ��           byte containing the BCD value    
   BCD_TO_INT                                     �kW  �   ����           BLINK           CLOCK                   TP   ��                 ENABLE            ��       +    TRUE:run Blink, FALSE: OUT keeps its value   TIMELOW           ��           Time for OUT=FALSE    TIMEHIGH           ��           Time for OUT=TRUE       OUT            ��	       &    output variable, starting with FALSE             �kW  �   ����        	   CHARCURVE           I            ��                 IN           ��           input signal    N           ��       @    number of  points defining the characteristic curve : 2<=N<=11       OUT           ��           output variable    ERR           ��       �    error :
												0 : 	no error
												1 :	error in ARRAY: wrong sequence ( completely tested, only if IN is equal to largest X-value of P)
												2 :	IN outside of limits of P
												4 :	number of POINTS (N) invalid       P    	  
                    POINT         ��       8    ARRAY of N points to describe the characteristic curve         �kW  �   ����        
   DERIVATIVE           X3             ��              X2             ��              X1             ��              T2            ��              T1            ��              INIT            ��                 IN            ��           input variable    TM           ��           time since last call in msec    RESET            ��           reset: set OUT to zero       OUT            ��
           derivative             �kW  �   ����           EXTRACT               X           ��           value    N           ��           number of bit to be extracted       EXTRACT                                      �kW  �   ����           FREQ_MEASURE           OLDIN             ��              INIT             ��              OLDT            ��              DIFF            ��              ADIFF   	  	                        ��              V            ��              B            ��              I            ��                 IN            ��           input signal    PERIODS           
              ��       A    out is the average frequency during PERIODS (number of periods)    RESET            ��           reset measurement       OUT            ��	           frequency [Hz]   VALID            ��
       \    FALSE: not yet PERIODS measurements done OR time distance between two rising edges > 3*OUT             �kW  �   ����           GEN           CET            ��              PER            ��              COUNTER            ��              CLOCK                    TON   ��              help             ��                 MODE               GEN_MODE  ��       p   define type :
								TRIANGLE				triangular	from - AMPL. to + AMPL.
								TRIANGLE_POS		triangular	from 0 to AMPL. 
								SAWTOOTH_RISE	sawtooth increasing from -AMPL. to +AMPL.
								SAWTOOTH_FALL	sawtooth decreasing from AMPL to -AMPL
								RECTANGLE			rectangular switching from  -AMPL. to +AMPL 
								SINUS					sinus
								COSINUS				cosinus    BASE            ��       A    FALSE: period referring to call; TRUE: period referring to time    PERIOD    �     ��       )    period time, only relevant if BASE=TRUE    CYCLES    �     ��       9    number of calls per period, only relevant if BASE=FALSE 	   AMPLITUDE           ��           amplitude    RESET            ��           reset       OUT           ��           generated function variable             �kW  �   ����        
   HYSTERESIS               IN           ��           input value    HIGH           ��           upper threshold value    LOW           ��           lower threshold value       OUT            ��	           hysteresis value             �kW  �   ����        
   INT_TO_BCD               I           ��       !    INT value to be converted to BCD   
   INT_TO_BCD                                     �kW  �   ����           INTEGRAL               IN            ��           input variable    TM           ��           time since last call in msec    RESET            ��       1    reset: OUT is set to zero and OVERFLOW to false       OUT            ��	           value of the integral    OVERFLOW            ��
       
    overflow             �kW  �   ����        
   LIMITALARM               IN           ��           INPUT value    HIGH           ��           upper threshold value    LOW           ��           lower threshold value       O            ��	            TRUE, if IN > HIGH, else FALSE    U            ��
           TRUE, if IN < LOW, else FALSE    IL            ��           neither O nor U             �kW  �   ����        	   LIN_TRAFO           Diff             ��                 IN            ��           input value   IN_MIN            ��           minimum input value    IN_MAX            ��           maximum input value    OUT_MIN            ��       $    corresponding minimum output value    OUT_MAX            ��       $    corresponding maximum output value       OUT            ��           output value    ERROR            ��       .    error: IN_MIN = IN_MAX or IN out of interval             �kW  �   ����           PACK               B0            ��           value of bit 0    B1            ��           value of bit 1    B2            ��           value of bit 2    B3            ��           value of bit 3    B4            ��           value of bit 4    B5            ��	           value of bit 5    B6            ��
           value of bit 6    B7            ��           value of bit 7       PACK                                     �kW  �   ����           PD           CLOCK                    TON   ��              D        
             
   DERIVATIVE   ��              TMDIFF            ��              ERROR             ��              INIT            ��              Y_ADDOFFSET             ��              KPcopy             ��              TVcopy             ��           
      ACTUAL            ��            actual value, process variable 	   SET_POINT            ��           desired value, set point    KP            ��           proportionality const. (P)   TV            ��       '    rate time, derivative time (D) in sec    Y_MANUAL            ��       /    Y is set to this value as long as MANUAL=TRUE    Y_OFFSET            ��	       !    offset for manipulated variable    Y_MIN            ��
       (    minimum value for manipulated variable    Y_MAX            ��       (    maximum value for manipulated variable    MANUAL            ��       [    	TRUE: manual: Y is not influenced by controller,
								FALSE: controller determines Y    RESET            ��       !    reset: set Y output to Y_OFFSET       Y            ��            manipulated variable, set value   LIMITS_ACTIVE            ��       1    true set value would exceed limits Y_MIN, Y_MAX             �kW  �   ����           PID     
      CLOCK                    TON   ��              I                   INTEGRAL   ��              D        
             
   DERIVATIVE   ��              TMDIFF            ��              ERROR             ��              INIT            ��              Y_ADDOFFSET             ��              KPcopy             ��              TNcopy             ��              TVcopy             ��                  ACTUAL            ��            actual value, process variable 	   SET_POINT            ��           desired value, set point    KP            ��           proportionality const. (P)   TN            ��           reset time (I) in sec    TV            ��       &    rate time, derivative time (D) in sec   Y_MANUAL            ��	       /    Y is set to this value as long as MANUAL=TRUE    Y_OFFSET            ��
       !    offset for manipulated variable    Y_MIN            ��       (    minimum value for manipulated variable    Y_MAX            ��       (    maximum value for manipulated variable    MANUAL            ��       [    	TRUE: manual: Y is not influenced by controller,
								FALSE: controller determines Y    RESET            ��       9    reset: set Y output to Y_OFFSET and reset integral part       Y            ��            manipulated variable, set value   LIMITS_ACTIVE            ��       1    true set value would exceed limits Y_MIN, Y_MAX    OVERFLOW            ��           overflow in integral part             �kW  �   ����           PID_FIXCYCLE     	      I                   INTEGRAL   ��              D        
             
   DERIVATIVE   ��              TMDIFF            ��              ERROR             ��              INIT            ��              Y_ADDOFFSET             ��              KPcopy             ��              TNcopy             ��              TVcopy             ��                  ACTUAL            ��            actual value, process variable 	   SET_POINT            ��           desired value, set point    KP            ��           proportionality const. (P)   TN            ��           reset time (I) in sec    TV            ��       &    rate time, derivative time (D) in sec   Y_MANUAL            ��	       /    Y is set to this value as long as MANUAL=TRUE    Y_OFFSET            ��
       !    offset for manipulated variable    Y_MIN            ��       (    minimum value for manipulated variable    Y_MAX            ��       (    maximum value for manipulated variable    MANUAL            ��       [    	TRUE: manual: Y is not influenced by controller,
								FALSE: controller determines Y    RESET            ��       9    reset: set Y output to Y_OFFSET and reset integral part    CYCLE            ��           time in s between two calls       Y            ��            manipulated variable, set value   LIMITS_ACTIVE            ��       1    true set value would exceed limits Y_MIN, Y_MAX    OVERFLOW            ��           overflow in integral part             �kW  �   ����           PUTBIT               X           ��           value to be manipulated    N           ��           position of bit to be changed    B            ��           value of specified bit       PUTBIT                                     �kW  �   ����           RAMP_INT           DIFF            ��              OLD_IN            ��              TB            ��              CET            ��              CH            ��              CLOCK                    TON   ��                 IN           ��           input variable    ASCEND           ��           maximum positive slope    DESCEND           ��       )    maximum negative slope (non-negative!!)    TIMEBASE           ��       �    reference for ASCEND/DESCEND :
											t#0s : ASCEND/DESCEND defined per call
											else : ASCEND/DESCEND defined per specified time   RESET            ��
           reset       OUT           ��       &    value of function with limited slope             �kW  �   ����        	   RAMP_REAL           DIFF             ��              OLD_IN             ��              TB            ��              CET            ��              CLOCK                    TON   ��              probe             ��                 IN            ��           input variable    ASCEND            ��           maximum positive slope    DESCEND            ��       )    maximum negative slope (non-negative!!)    TIMEBASE           ��       �    reference for ASCEND/DESCEND :
											t#0s : ASCEND/DESCEND defined per call
											else : ASCEND/DESCEND defined per specified time   RESET            ��
           reset       OUT            ��       &    value of function with limited slope             �kW  �   ����           STATISTICS_INT           SUM            ��              COUNTER            ��                 IN           ��           input value   RESET            ��       J    reset: average set to 0, min and max to minimum and maximum possible INTs      MN    �     ��           minimum value   MX     ���   ��	           maximum value   AVG           ��
           average value            �kW  �   ����           STATISTICS_REAL           COUNTER            ��              SUM             ��                 IN            ��           input value   RESET            ��       K    reset: average set to 0, min and max to minimum and maximum possible REALs      MN    �a   3E+38   ��           minimum value   MX    �   1E-37   ��	           maximum value   AVG            ��
           average value            �kW  �   ����           UNPACK               B           ��           byte to be unpacked       B0            ��           value of bit 0    B1            ��           value of bit 1    B2            ��	           value of bit 2    B3            ��
           value of bit 3    B4            ��           value of bit 4    B5            ��           value of bit 5    B6            ��           value of bit 6    B7            ��           value of bit 7             �kW  �   ����           VARIANCE           Z            ��              A             ��              B             ��                 IN            ��           input variable    RESET            ��           reset       OUT            ��       
    variance             �kW  �   ����           VERSION_UTIL               B            ��                 Version_Util                                     �kW  �   ����        	          BUTTON_DETECTION                             �kW  @   ����           CLOSING               PC                              CP                                    �kW  @   ����           INTERMEDIATE_STOP                             �kW  @   ����           MAIN           Close                Closing                  Open                Opening                  BLK                   BLINK                  INT_Stop               Intermediate_stop                                   �kW  @   ����           OPENING               PA            !                  AP            !                        �kW  @   ����           REQ_SERVICED                             �kW  @   ����           SENSOR_SIMULATION           BLK                   BLINK   #               I            #                                �kW  @   ����        	   WEIGHT_IN           DELAY                    TON   $                                �kW  @   ����        
   WEIGHT_OUT           DELAY                    TON   %                                �kW  @   ����            
 �             J             "   #   $   L   %      !         X            ����      ( �V      K   �V     K   �V     K   �V     K   �V                 �V         +           �   �       ��}Uӳ��� `��S            Tcp/Ip  AC500 Default TCP-IP 3S Tcp/Ip driver    8   �  Address IP address or hostname 
   192.168.0.10    �  Port     �7   d   Motorola byteorder               No    Yes �          �       ��}Uӳ��� `��S            Tcp/Ip  AC500 Default TCP-IP 3S Tcp/Ip driver    8   �  Address IP address or hostname 
   192.168.0.10    �  Port     �7   d   Motorola byteorder               No    Yes   K        @   �kWXp      ,     �~                     CoDeSys 1-2.2   ����  ��������                                �      
   �         �         �          �                    "          $                                                   '          (          �          �          �          �          �         �          �          �          �         �          �          �          �          �         �      �   �       P  �          �         �       �  �                    ~          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �       @  �       @  �       @  �       @  �       @  �       @  �         �         �          �       �  M         N          O          P          `         a          t          y          z          b         c          X          d         e         _          Q          \         R          K          U         X         Z         �          �         �      
   �         �         �         �         �         �          �          �         �      �����          �          �      (                                                                        "         !          #          $         �          ^          f         g          h          i          j          k         F          H         J         L          N         P         R          U         S          T          V          W          �          �          l          o          p          q          r          s         u          �          v         �          �      ����|         ~         �         x          z      (   �          �         %         �          �          �         @         �          �          �         &          �          	                   �          �          �         �          �         �          �          �          �          �          �          �          �          �          �          �          �                            I         J         K          	          L         M          �                             �          P         Q          S          )          	          	          �           	          +	       @  ,	       @  -	      ����������������������������������������������������������������������������������������������������  ��������                                                   �  	   	   Name                 ����
   Index                 ��         SubIndex                 �          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Variable    	             ����
   Value                Variable       Min                Variable       Max                Variable          5  
   	   Name                 ����
   Index                 ��         SubIndex                 �          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write    	   Type          ~         INT   UINT   DINT   UDINT   LINT   ULINT   SINT   USINT   BYTE   WORD   DWORD   REAL   LREAL   STRING    
   Value                Type       Default                Type       Min                Type       Max                Type          5  
   	   Name                 ����
   Index                 ��         SubIndex                 �          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write    	   Type          ~         INT   UINT   DINT   UDINT   LINT   ULINT   SINT   USINT   BYTE   WORD   DWORD   REAL   LREAL   STRING    
   Value                Type       Default                Type       Min                Type       Max                Type          d        Member    	             ����   Index-Offset                 ��         SubIndex-Offset                 �          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Min                Member       Max                Member          �  	   	   Name                 ����   Member    	             ����
   Value                Member    
   Index                 ��         SubIndex                 �          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Min                Member       Max                Member          �  	   	   Name                 ����
   Index                 ��         SubIndex                 �          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Variable    	             ����
   Value                Variable       Min                Variable       Max                Variable                         ����  ��������               �   _Dummy@    @   @@    @   @             ��@             ��@@   @     �v@@   ; @+   ����  ��������                                  �v@      4@   �             �v@      D@   �                       �       @                           �f@      4@     �f@                �v@     �f@     @u@     �f@        ���           __not_found__-1__not_found__    __not_found__     IB          % QB          % MB          %    �kW	�kW     ��������           VAR_GLOBAL
END_VAR
                                                                                  "   , h h H�             Main          Main();����               �kW                 $����, � � |               ��������           Standard 9�FW	9�FW      ��������                         	�kW     ��������           VAR_CONFIG
END_VAR
                                                                                   '              ,     �~           Global_Variables �kW	�kW     ��������        �
  VAR_GLOBAL
(*Real I/O variables simulation*)
	STOP:BOOL:=FALSE;
	SCENDI:BOOL:=FALSE;
	SALI:BOOL:=FALSE;
	P3:BOOL:=FALSE;
	P2:BOOL:=FALSE;
	P1:BOOL:=FALSE;
	P0:BOOL:=FALSE;
	SWITCH:BOOL:=FALSE;
	PD3:BOOL:=FALSE;
	PC3:BOOL:=FALSE;
	PA3:BOOL:=FALSE;
	RPC3:BOOL:=FALSE;
	PS2:BOOL:=FALSE;
	PD2:BOOL:=FALSE;
	PC2:BOOL:=FALSE;
	PA2:BOOL:=FALSE;
	RPC2:BOOL:=FALSE;
	PS1:BOOL:=FALSE;
	LL:BOOL:=FALSE;
	LPC3:BOOL:=FALSE;
	LPC2:BOOL:=FALSE;
	LPC1:BOOL:=FALSE;
	LPC0:BOOL:=FALSE;
	LPD3:BOOL:=FALSE;
	CP3:BOOL:=FALSE;
	AP3:BOOL:=FALSE;
	LPS2:BOOL:=FALSE;
	LPD2:BOOL:=FALSE;
	CP2:BOOL:=FALSE;
	AP2:BOOL:=FALSE;
	LPD1:BOOL:=FALSE;
	LPS1:BOOL:=FALSE;
	PD1:BOOL:=FALSE;
	PC1:BOOL:=FALSE;
	PA1:BOOL:=FALSE;
	RPC1:BOOL:=FALSE;
	PS0:BOOL:=FALSE;
	PC0:BOOL:=FALSE;
	PA0:BOOL:=FALSE;
	RPC0:BOOL:=FALSE;
	CP1:BOOL:=FALSE;
	AP1:BOOL:=FALSE;
	LPS0:BOOL:=FALSE;
	CP0:BOOL:=FALSE;
	AP0:BOOL:=FALSE;
(*------------------------------*)
(*Normal working variables*)
	PUSHED:BOOL:=FALSE;
	FLOOR :INT:=5;
	BUTTON: INT;
	FLAG_OD: BOOL:=FALSE;
	FLAG: INT:=0;
	MOTION: INT:=2;
	FLAG_STOP: BOOL:=FALSE;
	OBS: BOOL:=FALSE;
	TIMER_closed: TON;
	TIMER_opened: TON;
	BUTTON_CAR:ARRAY[0..3] OF BOOL:=FALSE,FALSE,FALSE,FALSE;
	BUTTON_UP:ARRAY[0..3] OF BOOL:=FALSE,FALSE,FALSE,FALSE;
	BUTTON_DOWN:ARRAY[0..3] OF BOOL:=FALSE,FALSE,FALSE,FALSE;
	BUT_TEMP: INT;
	MAX_BUT:INT:=0;
	MIN_BUT:INT:=3;
	Button_detection:Button_detection;
	Reset: Req_serviced;
	MOTION_TEMP: INT;
	TIMER_LL: TON;
	FIRST: BOOL:=TRUE;
	FIRST_BUT: BOOL:=TRUE;
	BUT_1: INT;
	UPDATE: BOOL:=FALSE;
	EXTEND: BOOL := FALSE;
(*------------------------------*)
(*Visualization and analysis stuff*)
	CAR: INT;
	CABIN_Y:INT:=400;
	DOOR0_X:INT:=485;
	DOOR1_X:INT:=485;
	DOOR2_X:INT:=485;
	DOOR3_X:INT:=485;
	TEXT: STRING;
	CRONO: TON;
	RESET_CRONO: BOOL:=FALSE;
	LAP: BOOL:=FALSE;
	MEMORY:ARRAY[0..9] OF TIME;
	LAP_FIRST: BOOL:=TRUE;
	TOTAL_USAGE: TIME:=T#0s;
(*------------------------------*)
(*Exceptional situation variables*)
	TIMER_EME: TON;
	TIMER_EME_OFF: TON;
	BO: BOOL:=FALSE;
	FLAG_BO: BOOL:=FALSE;
	RECOVERY: BOOL:=FALSE;
	FLAG_REC: BOOL:=FALSE;
	FIRE: BOOL:=FALSE;
	FLAG_EMG: BOOL:=FALSE;
	BLINKFIRE:BOOL:=FALSE;
	LL_EME: BOOL:=FALSE;
(*------------------------------*)
(*Weight simulation variables*)
	OVERLOAD: BOOL:=FALSE;
	WEIGHT:INT:=0;
	People_IN: Weight_IN;
	People_OUT: Weight_OUT;
	KIDS: INT:=0;
	WOMEN: INT:=0;
	MEN: INT:=0;
	FATGUYS: INT:=0;
	KID_IN: BOOL:=FALSE;
	WOMAN_IN: BOOL:=FALSE;
	MAN_IN: BOOL:=FALSE;
	FATGUY_IN: BOOL:=FALSE;
	KID_OUT: BOOL:=FALSE;
	WOMAN_OUT: BOOL:=FALSE;
	MAN_OUT: BOOL:=FALSE;
	FATGUY_OUT: BOOL:=FALSE;
	COUNTER_IN: BOOL:=TRUE;
	COUNTER_OUT: BOOL:=TRUE;
END_VAR
                                                                                               '           	     ��������           Variable_Configuration �kW	�kW	     ��������           VAR_CONFIG
END_VAR
                                                                                                 ~   |0|0 @t    @R   Arial @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                               ,     �   ���  �3 ���   � ���     
    @��  ���     @      DEFAULT             System      ~   |0|0 @t    @R   Arial @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '           	 L   , � � b            Button_detection �kW	�kW      ��������        V   FUNCTION_BLOCK Button_detection
VAR_INPUT
END_VAR
VAR_OUTPUT
END_VAR
VAR
END_VARt  (*Save energy*)
IF FLAG=1 AND NOT(PUSHED) THEN
	BUTTON:=FLOOR;
	BUT_TEMP:=BUTTON;
	BUT_1:=FLOOR;
	FIRST_BUT:=TRUE;
	IF NOT(FLAG_STOP) THEN
		TIMER_LL(IN:=TRUE,PT:=T#10s);
		LL:=NOT(TIMER_LL.Q);
	END_IF
END_IF
(*-----------------------------------*)
(*Button car detection*)
IF P0=TRUE THEN
	BUTTON_CAR[0]:=TRUE;
	BUT_TEMP:=0;
	LPC0:=TRUE;
	PUSHED:=TRUE;
	TIMER_LL(IN:=FALSE);
	IF FIRST_BUT AND NOT(RPC0) THEN
		BUT_1:=BUT_TEMP;
		FIRST_BUT:=FALSE;
	END_IF
	UPDATE:=FALSE;
END_IF

IF P1=TRUE THEN
	BUTTON_CAR[1]:=TRUE;
	BUT_TEMP:=1;
	LPC1:=TRUE;
	PUSHED:=TRUE;
	TIMER_LL(IN:=FALSE);
	IF FIRST_BUT AND NOT(RPC1) THEN
		BUT_1:=BUT_TEMP;
		FIRST_BUT:=FALSE;
	END_IF
	UPDATE:=FALSE;
END_IF

IF P2=TRUE THEN
	BUTTON_CAR[2]:=TRUE;
	BUT_TEMP:=2;
	LPC2:=TRUE;
	PUSHED:=TRUE;
	TIMER_LL(IN:=FALSE);
	IF FIRST_BUT AND NOT(RPC2) THEN
		BUT_1:=BUT_TEMP;
		FIRST_BUT:=FALSE;
	END_IF
	UPDATE:=FALSE;
END_IF

IF P3=TRUE THEN
	BUTTON_CAR[3]:=TRUE;
	BUT_TEMP:=3;
	LPC3:=TRUE;
	PUSHED:=TRUE;
	TIMER_LL(IN:=FALSE);
	IF FIRST_BUT AND NOT(RPC3) THEN
		BUT_1:=BUT_TEMP;
		FIRST_BUT:=FALSE;
	END_IF
	UPDATE:=FALSE;
END_IF
(*-----------------------------------*)
(*Button going up detection*)
IF PS0=TRUE THEN
	BUTTON_UP[0]:=TRUE;
	BUT_TEMP:=0;
	LPS0:=TRUE;
	PUSHED:=TRUE;
	TIMER_LL(IN:=FALSE);
	IF FIRST_BUT AND NOT(RPC0) THEN
		BUT_1:=BUT_TEMP;
		FIRST_BUT:=FALSE;
	END_IF
	UPDATE:=FALSE;
END_IF

IF PS1=TRUE THEN
	BUTTON_UP[1]:=TRUE;
	BUT_TEMP:=1;
	LPS1:=TRUE;
	PUSHED:=TRUE;
	TIMER_LL(IN:=FALSE);
	IF FIRST_BUT AND NOT(RPC1) THEN
		BUT_1:=BUT_TEMP;
		FIRST_BUT:=FALSE;
	END_IF
	UPDATE:=FALSE;
END_IF

IF PS2=TRUE THEN
	BUTTON_UP[2]:=TRUE;
	BUT_TEMP:=2;
	LPS2:=TRUE;
	PUSHED:=TRUE;
	TIMER_LL(IN:=FALSE);
	IF FIRST_BUT AND NOT(RPC2) THEN
		BUT_1:=BUT_TEMP;
		FIRST_BUT:=FALSE;
	END_IF
	UPDATE:=FALSE;
END_IF
(*-----------------------------------*)
(*Button going down detection*)
IF PD1=TRUE THEN
	BUTTON_DOWN[1]:=TRUE;
	BUT_TEMP:=1;
	LPD1:=TRUE;
	PUSHED:=TRUE;
	TIMER_LL(IN:=FALSE);
	IF FIRST_BUT AND NOT(RPC1) THEN
		BUT_1:=BUT_TEMP;
		FIRST_BUT:=FALSE;
	END_IF
	UPDATE:=FALSE;
END_IF

IF PD2=TRUE THEN
	BUTTON_DOWN[2]:=TRUE;
	BUT_TEMP:=2;
	LPD2:=TRUE;
	PUSHED:=TRUE;
	TIMER_LL(IN:=FALSE);
	IF FIRST_BUT AND NOT(RPC2) THEN
		BUT_1:=BUT_TEMP;
		FIRST_BUT:=FALSE;
	END_IF
	UPDATE:=FALSE;
END_IF

IF PD3 = TRUE THEN
	BUTTON_DOWN[3]:=TRUE;
	BUT_TEMP:=3;
	LPD3:=TRUE;
	PUSHED:=TRUE;
	TIMER_LL(IN:=FALSE);
	IF FIRST_BUT AND NOT(RPC3) THEN
		BUT_1:=BUT_TEMP;
		FIRST_BUT:=FALSE;
	END_IF
	UPDATE:=FALSE;
END_IF
(*-----------------------------------*)
(*Target button assignment*)
IF FLAG_STOP=FALSE AND MOTION=2 AND FLAG=3 THEN
				IF (MAX_BUT-FLOOR)>(FLOOR-MIN_BUT) THEN
					BUTTON:=MIN_BUT;
				ELSIF (MAX_BUT-FLOOR)<(FLOOR-MIN_BUT) THEN
					BUTTON:=MAX_BUT;
				ELSE
					BUTTON:=BUT_1;
				END_IF
END_IF

IF BUTTON=FLOOR AND EXTEND THEN
	EXTEND:=FALSE;
	CASE MOTION OF
		0:	MOTION:=1;
			UPDATE:=TRUE;
			IF BUTTON_UP[2] THEN
				MAX_BUT:=2;
			ELSIF BUTTON_UP[1] THEN
				MAX_BUT:=1;
			ELSE
				MAX_BUT:=0;
			END_IF
		1:	MOTION:=0;
			UPDATE:=TRUE;
			IF BUTTON_DOWN[1] THEN
				MIN_BUT:=1;
			ELSIF BUTTON_DOWN[2] THEN
				MIN_BUT:=2;
			ELSE
				MIN_BUT:=3;
			END_IF

	END_CASE;
END_IF

IF PUSHED THEN
	IF NOT(BUT_TEMP=FLOOR) OR NOT(MOTION=2) THEN
		IF MAX_BUT<BUT_TEMP AND NOT(UPDATE) THEN
			MAX_BUT:=BUT_TEMP;
		END_IF
		IF MIN_BUT>BUT_TEMP AND NOT(UPDATE) THEN
			MIN_BUT:=BUT_TEMP;
		END_IF
	END_IF

	CASE MOTION OF
		0: 	BUTTON:=MAX_BUT;
		1: 	BUTTON:=MIN_BUT;
	END_CASE
END_IF
(*-----------------------------------*)
(*First button detection (all requests serviced or stop button pushed)*)
IF FLAG=1 THEN
	IF PUSHED THEN
		BUTTON:=BUT_TEMP;
		FLAG:=2;
	END_IF
	IF STOP=TRUE THEN
		TIMER_LL(IN:=FALSE);
		FLAG:=1;
		TIMER_EME(IN:=TRUE,PT:=T#3s);
		IF TIMER_EME.Q THEN
			FLAG_EMG:=TRUE;
			FLAG:=4; (*Emergency*)
		END_IF
	ELSE
		TIMER_EME(IN:=FALSE);
	END_IF
	IF FLAG_STOP AND FLAG=2 THEN
		LPD3:=FALSE;
		LPD2:=FALSE;
		LPS2:=FALSE;
		LPD1:=FALSE;
		LPS1:=FALSE;
		LPS0:=FALSE;
	END_IF
END_IF



                  , IC ��           Closing �kW	�kW      ��������        c   FUNCTION_BLOCK Closing
VAR_INPUT
	PC:BOOL;
END_VAR
VAR_OUTPUT
	CP:BOOL;
END_VAR
VAR
END_VARl  LAP_FIRST:=TRUE;(*Visualization stuff*)

IF NOT(FLAG=0) AND NOT(FLAG=4) THEN
	(*Closing with timer*)
	Reset();
	TIMER_closed(IN:=TRUE,PT:=T#5S);
	IF PC=FALSE THEN
		CP:=TIMER_closed.Q;
		Button_detection();
	ELSE
		IF BUTTON=FLOOR THEN
			EXTEND:=TRUE;
		END_IF
		CP:=FALSE;
		TIMER_closed(IN:=FALSE);
		OBS:=FALSE;
		FLAG_OD:=FALSE;
		(*Final reset (all requests serviced) or continuing by the position control*)
		IF NOT(BUTTON_CAR[0] OR BUTTON_CAR[1] OR BUTTON_CAR[2] OR BUTTON_CAR[3] OR BUTTON_UP[0] OR BUTTON_UP[1] OR BUTTON_UP[2] OR BUTTON_DOWN[1] OR BUTTON_DOWN[2] OR BUTTON_DOWN[3]) THEN
			MOTION:=2;
			MAX_BUT:=0;
			MIN_BUT:=3;
			PUSHED:=FALSE;
			FIRST_BUT:=TRUE;
			UPDATE:=FALSE;
			FLAG:=1;
		ELSE
			FLAG:=2;
		END_IF
	END_IF
ELSE
	(*Closing without timer*)
	IF PC=FALSE THEN
		CP:=TRUE;
	ELSE
		CP:=FALSE;
	END_IF
END_IF                   ,     �~           Intermediate_stop �kW	�kW      ��������        W   FUNCTION_BLOCK Intermediate_stop
VAR_INPUT
END_VAR
VAR_OUTPUT
END_VAR
VAR
END_VAR�  CASE MOTION OF

	(*Going up-intermediate stop*)
	0:	CASE FLOOR OF
			(*The 0 and 3 floors are not considered because they are not intermediate stop*)
			1:	IF RPC1 AND (BUTTON_CAR[1] OR BUTTON_UP[1]) THEN
					SALI:=FALSE;
					FLAG:=3;
				END_IF

			2:	IF RPC2 AND (BUTTON_CAR[2] OR BUTTON_UP[2]) THEN
					SALI:=FALSE;
					FLAG:=3;
				END_IF
		END_CASE;

	(*Going up-intermediate stop*)
	1:	CASE FLOOR OF
			(*The 0 and 3 floors are not considered because they are not intermediate stop*)
			1:	IF RPC1 AND (BUTTON_CAR[1] OR BUTTON_DOWN[1]) THEN
					SCENDI:=FALSE;
					FLAG:=3;
				END_IF

			2:	IF RPC2 AND (BUTTON_CAR[2] OR BUTTON_DOWN[2]) THEN
					SCENDI:=FALSE;
					FLAG:=3;
				END_IF
		END_CASE;

END_CASE;                  ,   ��           Main �kW	�kW      ��������        w   PROGRAM Main
VAR
	Close: Closing;
	Open: Opening;
	BLK: BLINK;
	INT_Stop:Intermediate_stop;

END_VAR





�   State();
Blackout();
Fire_detection();
Sensor_simulation();
Floor_detection();

CASE FLAG OF

	0:	Init_procedure();

	1:	Button_detection();

	2:	Position_control();

	3:	OpCl_doors();

	4:	Emergency();

END_CASE    ,   ��           Blackout �kW�  IF BO AND NOT(FLAG_BO) AND NOT(RECOVERY) THEN
	(*Blackout simulation-global reset*)
	FLAG_BO:=TRUE;
	AP0:=FALSE;
	AP1:=FALSE;
	AP2:=FALSE;
	AP3:=FALSE;
	CP0:=FALSE;
	CP1:=FALSE;
	CP2:=FALSE;
	CP3:=FALSE;
	SALI:=FALSE;
	SCENDI:=FALSE;
	LL:=FALSE;
	LPC0:=FALSE;
	LPC1:=FALSE;
	LPC2:=FALSE;
	LPC3:=FALSE;
	LPS0:=FALSE;
	LPS1:=FALSE;
	LPD1:=FALSE;
	LPS2:=FALSE;
	LPD2:=FALSE;
	LPD3:=FALSE;
	BUTTON_CAR[0]:=FALSE;
	BUTTON_CAR[1]:=FALSE;
	BUTTON_CAR[2]:=FALSE;
	BUTTON_CAR[3]:=FALSE;
	BUTTON_UP[0]:=FALSE;
	BUTTON_UP[1]:=FALSE;
	BUTTON_UP[2]:=FALSE;
	BUTTON_UP[3]:=FALSE;
	BUTTON_DOWN[0]:=FALSE;
	BUTTON_DOWN[1]:=FALSE;
	BUTTON_DOWN[2]:=FALSE;
	BUTTON_DOWN[3]:=FALSE;
	FLAG:=5;
	TIMER_LL(IN:=FALSE);
ELSIF NOT(BO) AND NOT(RECOVERY) THEN
	(*Power supply ON simulation*)
	LL:=TRUE;
END_IF
(*-----------------------------------*)
(*Recovery*)
IF RECOVERY THEN
	FLAG_REC:=TRUE;
	FLAG:=4;
END_IF   , � � bZ        	   Emergency �kW
  (*Emergency lights indicators *)
IF FLAG_EMG THEN
	BLK( ENABLE:=TRUE, TIMELOW:=t#0.5s, TIMEHIGH:=t#0.5s, OUT => LPS0 );
	BLK( ENABLE:=TRUE, TIMELOW:=t#0.5s, TIMEHIGH:=t#0.5s, OUT => LPD1 );
	BLK( ENABLE:=TRUE, TIMELOW:=t#0.5s, TIMEHIGH:=t#0.5s, OUT => LPS1 );
	BLK( ENABLE:=TRUE, TIMELOW:=t#0.5s, TIMEHIGH:=t#0.5s, OUT => LPD2 );
	BLK( ENABLE:=TRUE, TIMELOW:=t#0.5s, TIMEHIGH:=t#0.5s, OUT => LPS2 );
	BLK( ENABLE:=TRUE, TIMELOW:=t#0.5s, TIMEHIGH:=t#0.5s, OUT => LPD3 );
END_IF
(*-----------------------------------*)
(*Blackout emergency light*)

(*IF FLAG_REC AND BO THEN
	BLK( ENABLE:=(FLAG=4), TIMELOW:=t#0.5s, TIMEHIGH:=t#0.5s, OUT=> LL ); (*for the real plant*)
END_IF*)

(*-----------------------------------*)
(*Reset car LEDs related to memorized car buttons*)
IF FIRST THEN
	LPC0:=FALSE;
	LPC1:=FALSE;
	LPC2:=FALSE;
	LPC3:=FALSE;
	FIRST:=FALSE;
END_IF
(*-----------------------------------*)
(*Car replacement*)
IF RPC0=FALSE AND RPC1=FALSE AND RPC2=FALSE AND RPC3=FALSE THEN
	SCENDI:=TRUE;
ELSE
	SCENDI:=FALSE;
END_IF
(*-----------------------------------*)
(*Opening/closing in exceptional conditions*)
IF (SWITCH OR FLAG_EMG OR FLAG_BO) AND (RPC0=TRUE OR RPC1=TRUE OR RPC2=TRUE OR RPC3=TRUE) THEN

	CASE FLOOR OF
		0: 	CP0:=FALSE;
			Open(PA:=PA0,AP=>AP0);

		1:	CP1:=FALSE;
			Open(PA:=PA1,AP=>AP1);

		2:	CP2:=FALSE;
			Open(PA:=PA2,AP=>AP2);

		3:	CP3:=FALSE;
			Open(PA:=PA3,AP=>AP3);

	END_CASE

ELSIF NOT(BO) AND FLAG_OD AND NOT(FLAG_EMG) THEN

	CASE FLOOR OF

		0:Close(PC:=PC0,CP=>CP0);

		1:Close(PC:=PC1,CP=>CP1);

		2:Close(PC:=PC2,CP=>CP2);

		3:Close(PC:=PC3,CP=>CP3);

	END_CASE

END_IF
(*-----------------------------------*)
(*Return to normal working condition*)
IF ((NOT(BO) AND NOT(FLAG_REC)) OR FLAG_EMG) AND NOT(FIRE) THEN
	IF STOP=TRUE AND (PA0 OR PA1 OR PA2 OR PA3) THEN
		TIMER_EME_OFF(IN:=TRUE,PT:=T#3s);
		IF TIMER_EME_OFF.Q THEN
			FLAG_EMG:=FALSE;
		END_IF
	ELSE
		TIMER_EME_OFF(IN:=FALSE);
	END_IF
END_IF

IF (PA0 OR PA1 OR PA2 OR PA3) AND NOT(BO) THEN
	FLAG_BO:=FALSE;
END_IF


IF (RPC0=TRUE OR RPC1=TRUE OR RPC2=TRUE OR RPC3=TRUE) AND (PC0=TRUE AND PC1=TRUE AND PC2=TRUE AND PC3=TRUE) AND NOT(FLAG_EMG) AND NOT(BO) THEN
	FLAG:=1;
	LPS0:=FALSE;
	LPS1:=FALSE;
	LPD1:=FALSE;
	LPS2:=FALSE;
	LPD2:=FALSE;
	LPD3:=FALSE;
	OBS:=FALSE;
	FLAG_OD:=FALSE;
	TIMER_closed(IN:=FALSE);
	TIMER_EME(IN:=FALSE);
	TIMER_EME_OFF(IN:=FALSE);
	FIRST:=TRUE;
	FIRST_BUT:=TRUE;
	FLAG_REC:=FALSE;
	FLAG_STOP:=FALSE;
	PUSHED:=FALSE;
	MAX_BUT:=0;
	MIN_BUT:=3;
END_IF   , � � |t           Fire_detection �kW�  (*Fire simulation*)
IF FIRE THEN
	FLAG:=4; (*Emergency*)
	FLAG_EMG:=TRUE;
	SALI:=FALSE;
	BUTTON_CAR[0]:=FALSE;
	BUTTON_CAR[1]:=FALSE;
	BUTTON_CAR[2]:=FALSE;
	BUTTON_CAR[3]:=FALSE;
	BUTTON_UP[0]:=FALSE;
	BUTTON_UP[1]:=FALSE;
	BUTTON_UP[2]:=FALSE;
	BUTTON_UP[3]:=FALSE;
	BUTTON_DOWN[0]:=FALSE;
	BUTTON_DOWN[1]:=FALSE;
	BUTTON_DOWN[2]:=FALSE;
	BUTTON_DOWN[3]:=FALSE;
END_IF   , 4 4 ��           Floor_detection �kW�  (*Floor 0*)
IF RPC0=TRUE THEN
	FLOOR:=0;
	LPC0:=TRUE;
ELSIF BUTTON_CAR[0]=FALSE THEN
	LPC0:=FALSE;
END_IF;
(*Floor 1*)
IF RPC1=TRUE THEN
	FLOOR:=1;
	LPC1:=TRUE;
ELSIF BUTTON_CAR[1]=FALSE THEN
	LPC1:=FALSE;
END_IF;
(*Floor 2*)
IF RPC2=TRUE THEN
	FLOOR:=2;
	LPC2:=TRUE;
ELSIF BUTTON_CAR[2]=FALSE THEN
	LPC2:=FALSE;
END_IF;
(*Floor 3*)
IF RPC3=TRUE THEN
	FLOOR:=3;
	LPC3:=TRUE;
ELSIF BUTTON_CAR[3]=FALSE THEN
	LPC3:=FALSE;
END_IF;   ,     ��           Init_procedure �kW�  (*Initialization procedure lights indicator*)
BLK( ENABLE:=(FLAG=0), TIMELOW:=t#0.5s, TIMEHIGH:=t#0.5s, OUT => LPS0 );
BLK( ENABLE:=(FLAG=0), TIMELOW:=t#0.5s, TIMEHIGH:=t#0.5s, OUT => LPD1 );
BLK( ENABLE:=(FLAG=0), TIMELOW:=t#0.5s, TIMEHIGH:=t#0.5s, OUT => LPS1 );
BLK( ENABLE:=(FLAG=0), TIMELOW:=t#0.5s, TIMEHIGH:=t#0.5s, OUT => LPD2 );
BLK( ENABLE:=(FLAG=0), TIMELOW:=t#0.5s, TIMEHIGH:=t#0.5s, OUT => LPS2 );
BLK( ENABLE:=(FLAG=0), TIMELOW:=t#0.5s, TIMEHIGH:=t#0.5s, OUT => LPD3 );
(*-----------------------------------*)
(*Closing all doors*)
Close(PC:=PC0,CP=>CP0);
Close(PC:=PC1,CP=>CP1);
Close(PC:=PC2,CP=>CP2);
Close(PC:=PC3,CP=>CP3);
(*-----------------------------------*)
(*Car replacement*)
IF RPC0=FALSE AND RPC1=FALSE AND RPC2=FALSE AND RPC3=FALSE THEN
	SCENDI:=TRUE;
ELSE
	SCENDI:=FALSE;
END_IF
(*-----------------------------------*)
(*Elevator plant ready*)
IF (RPC0=TRUE OR RPC1=TRUE OR RPC2=TRUE OR RPC3=TRUE) AND (PC0=TRUE AND PC1=TRUE AND PC2=TRUE AND PC3=TRUE)  THEN
	FLAG:=1;
	LPS0:=FALSE;
	LPS1:=FALSE;
	LPD1:=FALSE;
	LPS2:=FALSE;
	LPD2:=FALSE;
	LPD3:=FALSE;
	BUT_TEMP:=FLOOR;
	BUT_1:=FLOOR;
END_IF   , � � |        
   OpCl_doors �kW'  (*Opening/closing procedure*)
Button_detection();
CASE FLOOR OF
		0:	IF FLAG_OD THEN
				IF SWITCH=FALSE AND STOP=FALSE AND WEIGHT <= 320 AND NOT(PS0 OR P0) THEN
					Close(PC:=PC0,CP=>CP0);
				ELSE
					CP0:=FALSE;
					FLAG_OD:=FALSE;
				END_IF
			ELSE
				Open(PA:=PA0,AP=>AP0);
			END_IF

		1:	IF FLAG_OD THEN
				IF SWITCH=FALSE AND STOP=FALSE  AND WEIGHT <= 320 AND NOT(PS1 OR PD1 OR P1)  THEN
					Close(PC:=PC1,CP=>CP1);
				ELSE
					CP1:=FALSE;
					FLAG_OD:=FALSE;
				END_IF
			ELSE
				Open(PA:=PA1,AP=>AP1);
			END_IF

		2:	IF FLAG_OD THEN
				IF SWITCH=FALSE AND STOP=FALSE  AND WEIGHT <= 320 AND NOT(PS2 OR PD2 OR P2)  THEN
					Close(PC:=PC2,CP=>CP2);
				ELSE
					CP2:=FALSE;
					FLAG_OD:=FALSE;
				END_IF
			ELSE
				Open(PA:=PA2,AP=>AP2);
			END_IF

		3:	IF FLAG_OD THEN
				IF SWITCH=FALSE AND STOP=FALSE  AND WEIGHT <= 320 AND NOT(PD3 OR P3) THEN
					Close(PC:=PC3,CP=>CP3);
				ELSE
					CP3:=FALSE;
					FLAG_OD:=FALSE;
				END_IF
			ELSE
				Open(PA:=PA3,AP=>AP3);
			END_IF

END_CASE;   , N N .�           Position_control �kWy  Button_detection();

IF BUTTON>FLOOR AND NOT(STOP) THEN (*Going up*)
	SALI:=TRUE;
	MOTION:=0;
	INT_Stop();
	FLAG_STOP:=FALSE;

ELSIF BUTTON<FLOOR AND NOT(STOP) THEN (*Going down*)
	SCENDI:=TRUE;
	MOTION:=1;
	INT_Stop();
	FLAG_STOP:=FALSE;

ELSIF BUTTON=FLOOR AND FLAG_STOP=TRUE THEN (*Particular case: position control in stop condition with the BUTTON = previous floor *)

	CASE MOTION_TEMP OF
		0: 	IF NOT(( RPC0=TRUE AND BUTTON=0 ) OR ( RPC1=TRUE AND BUTTON=1 ) OR ( RPC2=TRUE AND BUTTON=2 ) OR ( RPC3=TRUE AND BUTTON=3 ) OR STOP=TRUE) THEN
				SCENDI:=TRUE;
				MOTION:=1;
			ELSE
				FLAG_STOP:=FALSE;
			END_IF

		1: 	IF NOT(( RPC0=TRUE AND BUTTON=0 ) OR ( RPC1=TRUE AND BUTTON=1 ) OR ( RPC2=TRUE AND BUTTON=2 ) OR ( RPC3=TRUE AND BUTTON=3 ) OR STOP=TRUE) THEN
				SALI:=TRUE;
				MOTION:=0;
			ELSE
				FLAG_STOP:=FALSE;
			END_IF
	END_CASE

ELSE (*Maximum/minimum floor reached or STOP pushed *)
	SALI:=FALSE;
	SCENDI:=FALSE;

	IF (RPC0 OR RPC1 OR RPC2 OR RPC3) THEN
		FLAG:=3;
	ELSE
		MAX_BUT:=0;
		MIN_BUT:=3;
		FLAG:=1;
		BUTTON_CAR[0]:=FALSE;
		BUTTON_CAR[1]:=FALSE;
		BUTTON_CAR[2]:=FALSE;
		BUTTON_CAR[3]:=FALSE;
		BUTTON_UP[0]:=FALSE;
		BUTTON_UP[1]:=FALSE;
		BUTTON_UP[2]:=FALSE;
		BUTTON_UP[3]:=FALSE;
		BUTTON_DOWN[0]:=FALSE;
		BUTTON_DOWN[1]:=FALSE;
		BUTTON_DOWN[2]:=FALSE;
		BUTTON_DOWN[3]:=FALSE;
		PUSHED:=FALSE;
		LPD3:=TRUE;
		LPD2:=TRUE;
		LPS2:=TRUE;
		LPD1:=TRUE;
		LPS1:=TRUE;
		LPS0:=TRUE;
		FLAG_STOP := TRUE;
		EXTEND:=FALSE;
		BUTTON:=FLOOR;
		FIRST_BUT:=TRUE;
		IF MOTION=0 OR MOTION=1 THEN
			MOTION_TEMP:=MOTION;
		END_IF
		MOTION:=2;
	END_IF
END_IF
   , N N ��           State �kW�  (*Visualization stuff:state declaration*)
IF FLAG=0 THEN
	TEXT:='INIT PROCEDURE';
ELSIF FLAG=1 THEN
	TEXT:='ELEVATOR READY: PUSH A BUTTON!';
ELSIF FLAG=2 THEN
	TEXT:='POSITION CONTROL';
ELSIF FLAG=3 THEN
	TEXT:='OPENING/CLOSING DOOR';
	OVERLOAD:=FALSE;
	IF WEIGHT>320 THEN
		OVERLOAD:=TRUE;
		TEXT:='Warning: OVERLOAD! Please exit!';
	END_IF
ELSIF FLAG=4 THEN
	TEXT:='EMERGENCY';
ELSIF FLAG=5 THEN
	TEXT:='WATING FOR RECOVERY!';
END_IF
IF FIRE THEN
	TEXT:='DO NOT USE THE ELEVATOR!';
END_IF             !   , 
  %x           Opening �kW	�kW      ��������        c   FUNCTION_BLOCK Opening
VAR_INPUT
	PA:BOOL;
END_VAR
VAR_OUTPUT
	AP:BOOL;
END_VAR
VAR
END_VAR  (*People entering and exiting simulation*)
People_IN();
People_OUT();
(*-----------------------------------*)
IF LAP_FIRST THEN (*Visualization stuff*)
	LAP:=TRUE;
END_IF
(*-----------------------------------*)
IF NOT(FLAG=4) THEN
	Reset();
END_IF
(*-----------------------------------*)
IF OBS=FALSE THEN (*Opening with timer*)
	IF NOT(FLAG=4) THEN
		Button_detection();
	END_IF

	TIMER_opened(IN:=TRUE,PT:=T#2s);

	IF PA=FALSE THEN
		AP:=TIMER_opened.Q;
	ELSE
		AP:=FALSE;
		FLAG_OD:=TRUE;
		OBS:=TRUE;
		TIMER_opened(IN:=FALSE);
	END_IF

ELSE (*Opening without timer*)

	IF NOT(FLAG=4) THEN
		Button_detection();
	END_IF

	IF PA=FALSE THEN
		AP:=TRUE;
	ELSE
		AP:=FALSE;
		FLAG_OD:=TRUE;
		TIMER_closed(IN:=FALSE);
	END_IF
END_IF               "   ,   - ��           Req_serviced �kW	�kW      ��������        R   FUNCTION_BLOCK Req_serviced
VAR_INPUT
END_VAR
VAR_OUTPUT
END_VAR
VAR
END_VAR�  CASE FLOOR OF

		0:	LPS0:=FALSE; (*target 0 reached*)
			BUTTON_CAR[0]:=FALSE;
			BUTTON_UP[0]:=FALSE;

		1:	BUTTON_CAR[1]:=FALSE; (*target 1 reached*)
			BUTTON_UP[1]:=FALSE;
			BUTTON_DOWN[1]:=FALSE;
			LPS1:=FALSE;
			LPD1:=FALSE;

		2:	BUTTON_CAR[2]:=FALSE; (*target 2 reached*)
			BUTTON_DOWN[2]:=FALSE;
			BUTTON_UP[2]:=FALSE;
			LPS2:=FALSE;
			LPD2:=FALSE;

		3:	LPD3:=FALSE; (*target 3 reached*)
			BUTTON_DOWN[3]:=FALSE;
			BUTTON_CAR[3]:=FALSE;

END_CASE;
               #   , h h H�           Sensor_simulation �kW	�kW      ��������        D   PROGRAM Sensor_simulation
VAR
	BLK: BLINK;
	I: INT := 0;
END_VAR�  (*Fire indicator*)
IF FIRE THEN
	BLK(ENABLE:= TRUE, TIMELOW:=t#0.5s, TIMEHIGH:=t#0.5s, OUT =>BLINKFIRE);
ELSE
	BLINKFIRE:=FALSE;
END_IF
(*-----------------------------------*)
(*Recovery lamp*)
IF FLAG_REC AND BO THEN
	LL_EME:=TRUE;
ELSE
	LL_EME:=FALSE;
END_IF
(*-----------------------------------*)
(*Movement cabin simulation*)
IF SALI=TRUE THEN
	CABIN_Y:=CABIN_Y-3;
END_IF

IF SCENDI=TRUE THEN
	CABIN_Y:=CABIN_Y+3;
END_IF

CAR:=-CABIN_Y+692;
(*-----------------------------------*)
(*Simulation time measurements*)
IF FLAG=0 THEN
	CRONO(IN:=FALSE);
END_IF
IF (SALI OR SCENDI) THEN
	CRONO(IN:=TRUE,PT:=T#1000S);
END_IF
IF RESET_CRONO THEN
	MEMORY[0]:=T#0s;
	MEMORY[1]:=T#0s;
	MEMORY[2]:=T#0s;
	MEMORY[3]:=T#0s;
	MEMORY[4]:=T#0s;
	MEMORY[5]:=T#0s;
	MEMORY[6]:=T#0s;
	MEMORY[7]:=T#0s;
	MEMORY[8]:=T#0s;
	MEMORY[9]:=T#0s;
	I:=0;
END_IF
IF LAP THEN
	CASE I OF
		0: 	MEMORY[0]:=CRONO.ET;
			I:=I+1;
			LAP:=FALSE;
			LAP_FIRST:=FALSE;
		1: 	MEMORY[1]:=CRONO.ET;
			I:=I+1;
			LAP:=FALSE;
			LAP_FIRST:=FALSE;
		2: 	MEMORY[2]:=CRONO.ET;
			I:=I+1;
			LAP:=FALSE;
			LAP_FIRST:=FALSE;
		3: 	MEMORY[3]:=CRONO.ET;
			I:=I+1;
			LAP:=FALSE;
			LAP_FIRST:=FALSE;
		4: 	MEMORY[4]:=CRONO.ET;
			I:=I+1;
			LAP:=FALSE;
			LAP_FIRST:=FALSE;
		5: 	MEMORY[5]:=CRONO.ET;
			I:=I+1;
			LAP:=FALSE;
			LAP_FIRST:=FALSE;
		6: 	MEMORY[6]:=CRONO.ET;
			I:=I+1;
			LAP:=FALSE;
			LAP_FIRST:=FALSE;
		7: 	MEMORY[7]:=CRONO.ET;
			I:=I+1;
			LAP:=FALSE;
			LAP_FIRST:=FALSE;
		8: 	MEMORY[8]:=CRONO.ET;
			I:=I+1;
			LAP:=FALSE;
			LAP_FIRST:=FALSE;
		9: 	MEMORY[9]:=CRONO.ET;
			I:=I+1;
			LAP:=FALSE;
			LAP_FIRST:=FALSE;
	END_CASE
	CRONO(IN:=FALSE);
END_IF
TOTAL_USAGE:=MEMORY[0]+MEMORY[1]+MEMORY[2]+MEMORY[3]+MEMORY[4]+MEMORY[5]+MEMORY[6]+MEMORY[7]+MEMORY[8]+MEMORY[9];
(*-----------------------------------*)
(*Boundaries doors conditions*)
IF DOOR1_X>585 THEN
DOOR1_X:=585;
END_IF
IF DOOR2_X>585 THEN
DOOR2_X:=585;
END_IF
IF DOOR3_X>585 THEN
DOOR3_X:=585;
END_IF
IF DOOR0_X>585 THEN
DOOR0_X:=585;
END_IF
(*-----------------------------------*)
(*Floor sensors simulation*)
IF CABIN_Y> 135 AND CABIN_Y<155 THEN
	RPC3:=TRUE;
ELSE
	RPC3:=FALSE;
END_IF

IF CABIN_Y> 320 AND CABIN_Y<340 THEN
	RPC2:=TRUE;
ELSE
	RPC2:=FALSE;
END_IF

IF CABIN_Y> 505 AND CABIN_Y<525 THEN
	RPC1:=TRUE;
ELSE
	RPC1:=FALSE;
END_IF

IF CABIN_Y> 690 AND CABIN_Y<710   THEN
	RPC0:=TRUE;
ELSE
	RPC0:=FALSE;
END_IF
(*-----------------------------------*)
(*Opening/closing doors*)
IF AP0=TRUE THEN
	DOOR0_X:=DOOR0_X+5;
END_IF

IF AP1=TRUE THEN
	DOOR1_X:=DOOR1_X+5;
END_IF

IF AP2=TRUE THEN
	DOOR2_X:=DOOR2_X+5;
END_IF

IF AP3=TRUE THEN
	DOOR3_X:=DOOR3_X+5;
END_IF

IF CP0=TRUE THEN
	DOOR0_X:=DOOR0_X-5;
END_IF

IF CP1=TRUE THEN
	DOOR1_X:=DOOR1_X-5;
END_IF

IF CP2=TRUE THEN
	DOOR2_X:=DOOR2_X-5;
END_IF

IF CP3=TRUE THEN
	DOOR3_X:=DOOR3_X-5;
END_IF
(*-----------------------------------*)
(*Door sensors simulation*)
IF DOOR3_X=485 THEN
	PC3:=TRUE;
ELSE
	PC3:=FALSE;
END_IF

IF DOOR2_X=485 THEN
	PC2:=TRUE;
ELSE
	PC2:=FALSE;
END_IF

IF DOOR1_X=485 THEN
	PC1:=TRUE;
ELSE
	PC1:=FALSE;
END_IF

IF DOOR0_X=485 THEN
	PC0:=TRUE;
ELSE
	PC0:=FALSE;
END_IF

IF DOOR3_X=585 THEN
	PA3:=TRUE;
ELSE
	PA3:=FALSE;
END_IF

IF DOOR2_X=585 THEN
	PA2:=TRUE;
ELSE
	PA2:=FALSE;
END_IF

IF DOOR1_X=585 THEN
	PA1:=TRUE;
ELSE
	PA1:=FALSE;
END_IF

IF DOOR0_X=585 THEN
	PA0:=TRUE;
ELSE
	PA0:=FALSE;
END_IF
               $   , � � b         	   Weight_IN �kW	�kW      ��������        ]   FUNCTION_BLOCK Weight_IN
VAR_INPUT
END_VAR
VAR_OUTPUT
END_VAR
VAR
	DELAY: TON;
END_VAR�  IF COUNTER_IN THEN
	COUNTER_IN:=FALSE;
	IF KID_IN THEN (*Kid entering simulation*)
		WEIGHT:=WEIGHT+30;
		KIDS:=KIDS+1;
	ELSIF WOMAN_IN THEN (*Woman entering simulation*)
		WEIGHT:=WEIGHT+55;
		WOMEN:=WOMEN+1;
	ELSIF MAN_IN THEN (*Man entering simulation*)
		WEIGHT:=WEIGHT+75;
		MEN:=MEN+1;
	ELSIF FATGUY_IN THEN (*Fat guy entering simulation*)
		WEIGHT:=WEIGHT+100;
		FATGUYS:=FATGUYS+1;
	END_IF
END_IF

IF NOT(KID_IN OR WOMAN_IN OR MAN_IN OR FATGUY_IN) THEN
	COUNTER_IN:=TRUE;
END_IF               %   , N N .�        
   Weight_OUT �kW	�kW      ��������        ^   FUNCTION_BLOCK Weight_OUT
VAR_INPUT
END_VAR
VAR_OUTPUT
END_VAR
VAR
	DELAY: TON;
END_VAR/  IF COUNTER_OUT THEN
	COUNTER_OUT:=FALSE;
	IF KID_OUT AND KIDS>0 THEN (*Kid exiting simulation*)
		WEIGHT:=WEIGHT-30;
		KIDS:=KIDS-1;
	ELSIF WOMAN_OUT AND WOMEN>0 THEN (*Woman exiting simulation*)
		WEIGHT:=WEIGHT-55;
		WOMEN:=WOMEN-1;
	ELSIF MAN_OUT AND MEN>0 THEN (*Man exiting simulation*)
		WEIGHT:=WEIGHT-75;
		MEN:=MEN-1;
	ELSIF FATGUY_OUT AND FATGUYS>0 THEN (*Fat guy exiting simulation*)
		WEIGHT:=WEIGHT-100;
		FATGUYS:=FATGUYS-1;
	END_IF
END_IF

IF NOT(KID_OUT OR WOMAN_OUT OR MAN_OUT OR FATGUY_OUT) THEN
	COUNTER_OUT:=TRUE;
END_IF                J   ,     �q           CHRONO �kW
    @�����kW   d                                                                                                        
    @        &  n�� �         ���     ���                                                ���� ���                                                      @ 
    @            d    N  
  P � �b �      
   P � �  �    CHRONO @  �
      MEMORY[INDEX]                                                                                                        
    @          ���       �                           @                              ���       Arial                 @            @      MEMORY                                                                                                              
    @         ' � P b ;   ���     ���                                     	   .CRONO.ET   %s @                          ���       Arial                      @                                                                                                         
    @        � ) � P � <     @                   RES @�       ���             @        ���       Cooper Black       .RESET_CRONO             @       �                                                                                                       
    @           H) �    ���     ���                                        .TOTAL_USAGE   TOTAL USAGE=%s @                          ���       Arial                      @             �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���             �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  X   , I  [|           Elevator_simulation �kW
    @�����kW�  d   ^                                                                                                     
    @        ��- 9� � �         ���     ���                                                  ���                                                      @ 
    @            d                                                                                                          
    @                    ���     ���     ���                                 *  {ExtendedElement},Visu\ElementDLL.ete,0,@Zeigerinstrument,354,180,0,0,0,0,0,0,CAR,,%.0f,0,1,1,540,540,0,540,0,0,0,255,255,255,0,-21,160,700,Arial Narrow,1,7,0,20,255,0,0,20,167,255,255,0,167,187,255,0,0,187,352,255,255,0,352,372,255,0,0,372,518,255,255,0,518,538,255,0,0,0,255,255,255,,0,0,0,0, @                         ���       Arial                      @                                                                                                           
    @             M � N � ! �   �   �   �   ���                           @                            ���                                                                                                                                      
    @        k     N � O � P � Q � R � S � T � U � V � W � X � Y � Z � [ ~ \ | ] { ^ y _ x ` v a u b t c r d q e p f o g n h m i l j k k j l i m h n g o f p e q d r c s c t b u a v ` w ` x _ y ^ _ 9 ^ : ] ; \ < [ < Z = Y > X ? W ? V @ U A T B S C R C Q D P E O F N G M H L I K J J K I L H M G N F O E P D Q C S B T A U @ V ? W > Y = Z < [ ; ] : ^ 9 ` 8 a 7 c 6 d 5 f 4 h 3 i 2 k 1 m 0 o / q . s - u , w + z * | )  ( � ' � & � % � $ � # � " � ! �   ��  ��  ���                           @                            ���                                                                                                                                      
    @             y ^ z ] { ] | \ } \ ~ [  Z � Z � Y � Y � X n 0 m 1 l 1 k 2 j 3 i 3 h 4 g 4 f 5 e 6 d 6 c 7 b 7 a 8 ` 9 _ 9   �   �   ���                           @                            ���                                                                                                                                      
    @        �     � X � X � W � W � V � V � U � U � U � T � T � S � S � S � R � R � R � Q � Q � Q � P � P � P � P � O � O � O � O � O � N � N � N � N � N � N � N � N � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � N � N � N � N � N � N � N � N � O � O � O � O � O � P � P � P � P � Q � Q � Q � R � R � R � S � S � S � T � T � U � U � U � V � V � W � W � X � X � 0 � 0 � / � / � . � . � - � - � - � , � , � + � + � * � * � * � ) � ) � ) � ( � ( � ' � ' � ' � ' � & � & � & � % � % � % � % � $ � $ � $ � $ � # � # � # � # � # � " � " � " � " � " � " � ! � ! � ! � ! � ! � ! � ! � ! �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   � ! � ! � ! � ! � ! � ! � ! � ! � " � " � " � " � " � " � # � # � # � # � # � $ � $ � $ � $ � % � % � % � % � & � & � & � ' � ' � ' � ' � ( � ( � )  ) ~ ) } * | * { * z + y + x , w , v - u - t - s . r . q / p / o 0 n 0   ��  ��  ���                           @                             ���                                                                                                                                      
    @             � X � Y � Y � Z � Z � [ � \ � \ � ] � ] � ^ 9 8  7 � 7 � 6 � 6 � 5 � 4 � 4 � 3 � 3 � 2 � 1 � 1 � 0   �   �   ���                           @                         !   ���                                                                                                                                      
    @        l     � ^ � _ � ` � ` � a � b � c � c � d � e � f � g � h � i � j � k � l � m � n � o � p � q � r  t u v x y { | ~ � 	� 
� � � � � � � � � � � A� @� ?� >� =� <� ;� :� 9 8| 7z 6w 5u 4s 3q 2o 1m 0k /i .h -f ,d +c *a )` (^ '] &[ %Z $Y #W "V !U  T S Q P O N M L K J I H G F E D C C B A @ ? 
? 	> = < < ; : 9 9   ��  ��  ���                           @                         "   ���                                                                                                                                      
    @             � � B� A�   �   �   ���                           @                         #   ���                                                                                                                                     
    @             M �   �   ���     ���                           @                         $   ���                                                                                                                                      
    @        	 �  �  �     ���     ���     ���                                    0 @                      %   ���       Arial Narrow                      @                                                                                                          
    @             � B�   ���     ���                           @                         &   ���                                                                                                                                      
    @        A� c� R�     ���     ���     ���                                    540 @                      '   ���       Arial Narrow                      @                                                                                                          
    @        �     M � N � O � P � Q � R � S � T � U � V � W � X � Y � Z � [ ~ \ | ] { ^ y _ x ` v a u b t c r d q e p f o g n h m i l j k k j l i m h n g o f p e q d r c s c t b u a v ` w ` x _ y ^ z ] { ] | \ } \ ~ [  Z � Z � Y � Y � X � X � W � W � V � V � U � U � U � T � T � S � S � S � R � R � R � Q � Q � Q � P � P � P � P � O � O � O � O � O � N � N � N � N � N � N � N � N � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � M � N � N � N � N � N � N � N � N � O � O � O � O � O � P � P � P � P � Q � Q � Q � R � R � R � S � S � S � T � T � U � U � U � V � V � W � W � X � X � Y � Y � Z � Z � [ � \ � \ � ] � ] � ^ � _ � ` � ` � a � b � c � c � d � e � f � g � h � i � j � k � l � m � n � o � p � q � r  t u v x y { | ~ � 	� 
� � � � � � � � � � � �    ���     ���                           @                         (   ���                                                                                                                                     
    @        #    B� A� @� ?� >� =� <� ;� :� 9 8| 7z 6w 5u 4s 3q 2o 1m 0k /i .h -f ,d +c *a )` (^ '] &[ %Z $Y #W "V !U  T S Q P O N M L K J I H G F E D C C B A @ ? 
? 	> = < < ; : 9 9 8  7 � 7 � 6 � 6 � 5 � 4 � 4 � 3 � 3 � 2 � 1 � 1 � 0 � 0 � / � / � . � . � - � - � - � , � , � + � + � * � * � * � ) � ) � ) � ( � ( � ' � ' � ' � ' � & � & � & � % � % � % � % � $ � $ � $ � $ � # � # � # � # � # � " � " � " � " � " � " � ! � ! � ! � ! � ! � ! � ! � ! �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   � ! � ! � ! � ! � ! � ! � ! � ! � " � " � " � " � " � " � # � # � # � # � # � $ � $ � $ � $ � % � % � % � % � & � & � & � ' � ' � ' � ' � ( � ( � )  ) ~ ) } * | * { * z + y + x , w , v - u - t - s . r . q / p / o 0 n 0 m 1 l 1 k 2 j 3 i 3 h 4 g 4 f 5 e 6 d 6 c 7 b 7 a 8 ` 9 _ 9 ^ : ] ; \ < [ < Z = Y > X ? W ? V @ U A T B S C R C Q D P E O F N G M H L I K J J K I L H M G N F O E P D Q C S B T A U @ V ? W > Y = Z < [ ; ] : ^ 9 ` 8 a 7 c 6 d 5 f 4 h 3 i 2 k 1 m 0 o / q . s - u , w + z * | )  ( � ' � & � % � $ � # � " � ! �   �    ���     ���                           @                         )   ���                                                                                                                                      
    @         � � � i � i � P � i � i � �           ���                           @                ((CAR * 1.0)-270) * 0.333333        f   ���                                                                                                                                     
    @        � � � � � �           ���                                             @                      g   ���                              @             �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                                                                                                         
    @        OD���v        ���     ���                                                ���� ���                                                      @ 
    @            d                                                                                                          
    @            6e � 2   ���     ���                                            @                         ���                              @                                                                                                         
    @        $  � C W 1     @                    FIRE @���     ���             @    �    ���           .FIRE                 @       �         �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                                                                                                           
    @        �  J� A   ���     ���                                            @             CABIN_Y             ���                              @                                                                                                           
    @        Xj A@L�   ��     ���                                            @                      *    ���                              @                                                                                                           
    @        �  J� A   ���     ���                                            @             CABIN_Y        �    ���                              @                                                                                                           
    @        �z J@�  ��@     ���                                            @                         ���                              @                                                                                                           
    @          � e 2 �    ��     ���                                            @         DOOR3_X                ���                              @                                                                                                           
    @          Je �2 �   ��     ���                                            @         DOOR2_X                ���                              @                                                                                                           
    @          e �2 D   ��     ���                                            @         DOOR1_X                ���                              @                                                                                                           
    @          �e ?2    ��     ���                                            @         DOOR0_X                ���                              @                                                                                                           
    @          � e 2 �    ��     ���                                            @         DOOR3_X            �    ���                              @                                                                                                           
    @          � e 2 �    ��     ���                                            @         DOOR3_X            �    ���                              @                                                                                                           
    @          � e 2 �    ��     ���                                            @         DOOR3_X            �    ���                              @                                                                                                           
    @          �e ?2    ��     ���                                            @         DOOR0_X            �    ���                              @                                                                                                           
    @          e �2 D   ��     ���                                            @         DOOR1_X            �    ���                              @                                                                                                           
    @          Je �2 �   ��     ���                                            @         DOOR2_X            �    ���                              @                                                                                                           
    @          Je �2 �   ��     ���                                            @         DOOR2_X            �    ���                              @                                                                                                           
    @          e �2 D   ��     ���                                            @         DOOR1_X            �    ���                              @                                                                                                           
    @          �e ?2    ��     ���                                            @         DOOR0_X            �    ���                              @                                                                                                           
    @          � e 2 �    ��     ���                                            @         DOOR3_X                ���                              @                                                                                                           
    @          � e 2 �    ��     ���                                            @         DOOR3_X               ���                              @                                                                                                           
    @          � e 2 �    ��     ���                                            @         DOOR3_X               ���                              @                                                                                                           
    @        I � t� @      �   ���     �                                 .FLOOR   %s @                      �    ���       Arial                      @                                                                                                           
    @         � T� e� L� L  ���      �                           @                        SCENDI�    ���                                                                                                                                      
    @         � *� � 3� 3  ���      �                           @                        SALI�    ���                                                                                                                                      
    @        P��=�|  ���     ���                                            @                      �    ���                              @                                                                                                         
    @        ��E4��        ���     ���                                               n    ���                                                      @ 
    @            d                                                                                                          
    @                    ���     ���     ���                                 �   {ExtendedElement},Visu\ElementDLL.ete,0,@Zeigerinstrument,182,180,0,0,0,0,0,0,WEIGHT,,%.0f,0,1,1,80,80,0,480,0,0,0,0,0,0,0,-21,160,700,Arial Narrow,1,3,0,160,0,128,0,160,320,255,255,0,320,480,255,0,0,0,255,255,255,,0,0,0,0, @                      o    ���       Arial                      @                                                                                                           
    @        4     3 [ 4 R 5 O 6 L 7 J 8 H 9 F : D ; C < B = A > ? ? > @ = A = B < C ; D : E : F 9 G 8 > ( = ( < ) ; ) : * 9 + 8 , 7 , 6 - 5 . 4 / 3 0 2 1 1 2 0 3 / 4 . 5 - 6 , 7 + 9 * : ) < ( = ' ? & A % C $ F # H " L ! P   [    �   �  ���                           @                         p    ���                                                                                                                                      
    @        e     G 8 H 8 I 7 J 7 K 6 L 6 M 6 N 5 O 5 P 5 Q 4 R 4 S 4 T 4 U 3 V 3 W 3 X 3 Y 3 Z 3 [ 3 \ 3 ] 3 ^ 3 _ 3 ` 3 a 3 b 4 c 4 d 4 e 4 f 5 g 5 h 5 i 6 j 6 k 6 l 7 m 7 n 8 o 8 y ( x ( w ' v ' u & t & s % r % q $ p $ o # n # m # l # k " j " i " h ! g ! f ! e ! d ! c ! b   a   `   _   ^   ]   \   [   Z   Y   X   W   V   U   T   S ! R ! Q ! P ! O ! N ! M " L " K " J # I # H # G # F $ E $ D % C % B & A & @ ' ? ' > (   ��  ��  ���                           @                         q    ���                                                                                                                                      
    @        3     o 8 p 9 q : r : s ; t < u = v = w > x ? y A z B { C | D } F ~ H  J � L � O � R � [ � [ � P � L � H � F � C � A � ? � = � < � : � 9 � 7 � 6 � 5 � 4 � 3 � 2 � 1 � 0 � / � . � -  , ~ , } + | * { ) z ) y (   �   �   ���                           @                         r    ���                                                                                                                                     
    @             3 [   [   ���     ���                           @                         s    ���                                                                                                                                      
    @        	 N  g  [     ���     ���                                            0 @                      t    ���       Arial Narrow                      @                                                                                                          
    @             8 G ( >   ���     ���                           @                         u    ���                                                                                                                                      
    @         ) & B  6     ���     ���                                            80 @                      v    ���       Arial Narrow                      @                                                                                                          
    @             G 8 > (   ���     ���                           @                         w    ���                                                                                                                                      
    @        %  G ' 6      ���     ���                                            160 @                      x    ���       Arial Narrow                      @                                                                                                          
    @             [ 3 [     ���     ���                           @                         y    ���                                                                                                                                      
    @        J  l  [      ���     ���                                            240 @                      z    ���       Arial Narrow                      @                                                                                                          
    @             o 8 y (   ���     ���                           @                         {    ���                                                                                                                                      
    @        p  � ' �      ���     ���                                            320 @                      |    ���       Arial Narrow                      @                                                                                                          
    @             ~ G � >   ���     ���                           @                         }    ���                                                                                                                                      
    @        � ) � B � 6     ���     ���                                            400 @                      ~    ���       Arial Narrow                      @                                                                                                          
    @             � [ � [   ���     ���                           @                             ���                                                                                                                                      
    @        � O � h � \     ���     ���                                            480 @                      �    ���       Arial Narrow                      @                                                                                                          
    @        Q     3 [ 4 R 5 O 6 L 7 J 8 H 9 F : D ; C < B = A > ? ? > @ = A = B < C ; D : E : F 9 G 8 H 8 I 7 J 7 K 6 L 6 M 6 N 5 O 5 P 5 Q 4 R 4 S 4 T 4 U 3 V 3 W 3 X 3 Y 3 Z 3 [ 3 \ 3 ] 3 ^ 3 _ 3 ` 3 a 3 b 4 c 4 d 4 e 4 f 5 g 5 h 5 i 6 j 6 k 6 l 7 m 7 n 8 o 8 p 9 q : r : s ; t < u = v = w > x ? y A z B { C | D } F ~ H  J � L � O � R � [    ���     ���                           @                         �    ���                                                                                                                                     
    @        w     � [ � P � L � H � F � C � A � ? � = � < � : � 9 � 7 � 6 � 5 � 4 � 3 � 2 � 1 � 0 � / � . � -  , ~ , } + | * { ) z ) y ( x ( w ' v ' u & t & s % r % q $ p $ o # n # m # l # k " j " i " h ! g ! f ! e ! d ! c ! b   a   `   _   ^   ]   \   [   Z   Y   X   W   V   U   T   S ! R ! Q ! P ! O ! N ! M " L " K " J # I # H # G # F $ E $ D % C % B & A & @ ' ? ' > ( = ( < ) ; ) : * 9 + 8 , 7 , 6 - 5 . 4 / 3 0 2 1 1 2 0 3 / 4 . 5 - 6 , 7 + 9 * : ) < ( = ' ? & A % C $ F # H " L ! P   [    ���     ���                           @                         �    ���                                                                                                                                      
    @         [ [ [ ? X ? [ 5 ^ ? [ ? [ [           ���                           @                ((WEIGHT * 1.0)-240) * 0.375        h   ���                                                                                                                                     
    @        W W _ _ [ [           ���                                             @                      i   ���                              @             �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                                                                                                         
    @        j2�]�G    @                    WOMAN_IN @���     ���             @    b    ���            	   .WOMAN_IN             @       �                                                                                                     
    @        jr����    @                    MAN_IN @���     ���             @    c    ���               .MAN_IN             @       �                                                                                                     
    @        n�����    @                    KID_IN @���     ���             @    d    ���               .KID_IN             @       �                                                                                                     
    @        n���    @                     FAT GUY_IN @���     ���             @    e    ���            
   .FATGUY_IN             @       �                                                                                                     
    @        �2+]�G    @                    WOMAN_OUT @���     ���             @    j    ���            
   .WOMAN_OUT             @       �                                                                                                     
    @        �r+���    @                    MAN_OUT @���     ���             @    k    ���               .MAN_OUT             @       �                                                                                                     
    @        ��+���    @                    KID_OUT @���     ���             @    l    ���               .KID_OUT             @       �                                                                                                     
    @        ��+�    @                 !   FAT GUY_OUT @���     ���             @    m    ���               .FATGUY_OUT             @       �                                                                                                     
    @        ��+�    @                 !   FAT GUY_OUT @���     ���             @    �    ���               .FATGUY_OUT             @       �                                                                                                     
    @        ��+���    @                    KID_OUT @���     ���             @    �    ���               .KID_OUT             @       �                                                                                                     
    @        �r+���    @                    MAN_OUT @���     ���             @    �    ���               .MAN_OUT             @       �                                                                                                     
    @        �2+]�G    @                    WOMAN_OUT @���     ���             @    �    ���            
   .WOMAN_OUT             @       �                                                                                                     
    @        n���    @                     FAT GUY_IN @���     ���             @    �    ���            
   .FATGUY_IN             @       �                                                                                                     
    @        n�����    @                    KID_IN @���     ���             @    �    ���               .KID_IN             @       �                                                                                                     
    @        nr����    @                    MAN_IN @���     ���             @    �    ���               .MAN_IN             @       �                                                                                                     
    @        n2�]�G    @                    WOMAN_IN @���     ���             @    �    ���            	   .WOMAN_IN             @       �                                                                                                     
    @        n2�]�G    @                    WOMAN_IN @���     ���             @    �    ���            	   .WOMAN_IN             @       �                                                                                                     
    @        nr����    @                    MAN_IN @���     ���             @    �    ���               .MAN_IN             @       �                                                                                                     
    @        n�����    @                    KID_IN @���     ���             @    �    ���               .KID_IN             @       �                                                                                                     
    @        n���    @                     FAT GUY_IN @���     ���             @    �    ���            
   .FATGUY_IN             @       �                                                                                                     
    @        �2+]�G    @                    WOMAN_OUT @���     ���             @    �    ���            
   .WOMAN_OUT             @       �                                                                                                     
    @        �r+���    @                    MAN_OUT @���     ���             @    �    ���               .MAN_OUT             @       �                                                                                                     
    @        ��+���    @                    KID_OUT @���     ���             @    �    ���               .KID_OUT             @       �                                                                                                     
    @        ��+�    @                 !   FAT GUY_OUT @���     ���             @    �    ���               .FATGUY_OUT             @       �                                                                                                     
    @        ��+�    @                 !   FAT GUY_OUT @���     ���             @    �    ���               .FATGUY_OUT             @       �                                                                                                     
    @        ��+���    @                    KID_OUT @���     ���             @    �    ���               .KID_OUT             @       �                                                                                                     
    @        �r+���    @                    MAN_OUT @���     ���             @    �    ���               .MAN_OUT             @       �                                                                                                     
    @        �2+]�G    @                    WOMAN_OUT @���     ���             @    �    ���            
   .WOMAN_OUT             @       �                                                                                                       
    @        >3b^OH  ���     ���                                       .WOMEN   %s @                      �    ���       Arial                      @                                                                                                         
    @        j���    @                     FAT GUY_IN @���     ���             @    �    ���            
   .FATGUY_IN             @       �                                                                                                     
    @        j�����    @                    KID_IN @���     ���             @    �    ���               .KID_IN             @       �                                                                                                     
    @        nr����    @                    MAN_IN @���     ���             @    �    ���               .MAN_IN             @       �                                                                                                     
    @        n2�]�G    @                    WOMAN_IN @���     ���             @    �    ���            	   .WOMAN_IN             @       �                                                                                                       
    @        >sb�O�  ���     ���                                       .MEN   %s @                      �    ���       Arial                      @                                                                                                           
    @        >�b�O�  ���     ���                                       .KIDS   %s @                      �    ���       Arial                      @                                                                                                           
    @        >�bO  ���     ���                                       .FATGUYS   %s @                      �    ���       Arial                      @                                                                                                           
    @        ����=�    ��     ���                                             @                         ���                              @                                                                                                           
    @        ���<�    ��     ���                                             @                         ���                              @                                                                                                           
    @        ��J=/    ��     ���                                             @                         ���                              @                                                                                                           
    @        em ��      ��     ���                                             @                         ���                              @                                                                                                           
    @        X/ Ak LM   ���     �                                     (.OVERLOAD) OR (.FLAG_EMG)   .TEXT   %s @                      �    ���       Cooper Black                      @                                                                                                         
    @        d� ���        ���     ���                                                ���� ���                                                      @ 
    @            d                                                                                                        
    @          U o b    @                     @  �     ���             @        ���               PS1             @       �                                                                                                     
    @          � �	 �    @                     @  �     ���             @        ���               PD1             @       �                                                                                                       
    @         9 e9 U, nF n  ���     ��                           @                        LPS1    ���                                                                                                                                      
    @         9 �9 �, �F �  ���     ��                           @                        LPD1    ���                                                                                                                                    
    @          �  �  �     @                     @  �     ���             @        ���               PS2             @       �                                                                                                     
    @          �  � 	 �     @                     @  �     ���             @        ���               PD2             @       �                                                                                                       
    @         9 � 9 � , � F �   ���     ��                           @                        LPD2    ���                                                                                                                                    
    @          #  = 	 (     @                     @  �     ���             @        ���               PD3             @       �                                                                                                       
    @         9 + 9 < , # F #   ���     ��                           @                        LPD3     ���                                                                                                                                    
    @           (     @                     @  �     ���             @    !    ���               PS0             @       �                                                                                                       
    @         9 9 , 'F '  ���     ��                           @                        LPS0"    ���                                                                                                                                     
    @        / � A � 8 �   ���     �                                     RPC2        @                      #    ���                              @                                                                                                          
    @        0 yB �9 �  ���     �                                     RPC1        @                      $    ���                              @                                                                                                          
    @        / 8A M8 B  ���     �                                     RPC0        @                      %    ���                              @                                                                                                          
    @        1   C  : 
   ���     �                                     RPC3        @                      '    ���                              @                                                                                                           
    @         9 � 9 � , � F �   ���     ��                           @                        LPS2�    ���                                        �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                                                                                                         
    @        M� �4�        ���     ���                                                ���� ���                                                      @ 
    @            d                                                                                                          
    @            6> �    ��                                            .BO        @                         ���                              @                                                                                                         
    @        & 
 � 3 X      @                    BLACKOUT @���     ���             @    �    ���           .BO                 @       �                                                                                                     
    @        � 
 3 �      @                    RECOVERY @���     ���             @    �    ���            	   .RECOVERY             @       �         �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                                                                                                         
    @        HW�-r       ���     ���            fire.jpg                    NOT(.BLINKFIRE)    �               @                 �    ���                                      ���                                                                                                     
    @        ��e � � �         ���     ���                                                ���� ���                                                      @ 
    @            d                                                                                                         
    @        <  _ $ M    ��  �   ���     �                                     1 @                      �   ���       Arial                      @                                                                                                          
    @        �   � # �    ��  �   ���     �                                     2 @                      �   ���       Arial                      @                                                                                                          
    @        � b � s   ��  �   ���     �                                     3 @                      �   ���       Arial                      @                                                                                                          
    @          c # �  t   ��  �   ���     �                                     GF @                      �   ���       Arial                      @             �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                                                                                                           
    @          �� ?� {  ��@     ���                                            @                      E    ���       Cooper Black                      @                                                                                                         
    @        J fs �^ u    @                   2 @        ���     ���     @���     ���       Cooper Black       P2             @       �                                                                                                     
    @        J 4s S^ C    @                   3 @        ���     ���     @���     ���       Cooper Black   P3   P3             @       �                                                                                                     
    @        J �s �^ �    @                   1 @        ���     ���     @���     ���       Cooper Black       P1             @       �                                                                                                     
    @        J �s �^ �    @                   0 @        ���     ���     @��� 	    ���       Cooper Black       P0             @       �                                                                                                     
    @        B �� "a     @                   STOP @�       ���             @        ���       Cooper Black       STOP             @       �                                                                                                     
    @        6 �� )p     @                    OBSTACLE @�       ���             @        ���       Cooper Black   SWITCH   SWITCH             @       �                                                                                                      
    @        � :� O� D  ���     �                                     BUTTON_CAR[3]        @                      F    ���                              @                                                                                                          
    @        � l� �� v  ���     �                                     BUTTON_CAR[2]        @                      G    ���                              @                                                                                                          
    @        � �� �� �  ���     �                                     BUTTON_CAR[1]        @                      H    ���                              @                                                                                                          
    @        � �� �� �  ���     �                                     BUTTON_CAR[0]        @                      I    ���                              @                                                                                                          
    @        i �� �� �   ��@     ��                                    LL    	   CABIN @                      O    ���       Cooper Black                      @                                                                                                         
    @        �- <� ��         ���     ���                                                ���� ���                                                      @ 
    @            d                                                                                                          
    @          P � m O ^   ���     ���                                        .BUTTON   BUTTON  = %s @                      B    ���       Arial                      @                                                                                                           
    @          � � � O �   ���     ���                                        .MOTION   MOTION = %s @                      J    ���       Arial                      @                                                                                                           
    @          6 � S O E   ���     ���                                     	   .BUT_TEMP   BUT_TEMP  = %s @                      N    ���       Arial                      @                                                                                                           
    @           � 7 O (   ���     ���                                        .MAX_BUT   MAX_BUT = %s @                      Q    ���       Arial                      @                                                                                                           
    @            �  O    ���     ���                                        .MIN_BUT   MIN_BUT = %s @                      R    ���       Arial                      @                                                                                                           
    @          � � � O �   ���     ���                                        .FLAG   FLAG = %s @                      v   ���       Arial                      @                                                                                                           
    @          l � � O z   ���     ���                                        .BUT_1   BUT_1 = %s @                      �   ���       Arial                      @             �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                                                                                                         
    @        � �� �� �       ���     ���            lamp.jpg                    NOT(.LL_EME)    �               @                 �   ���                                      ���                                                                                                     
    @        �dE��      ���     ���            EXIT.jpg                    NOT(.FIRE AND .RPC2)  �               @                 �   ���                                      ���                                                                                                       
    @          Je �2 �   ��     ���                                            @         DOOR2_X               ���                              @                                                                                                         
    @        �� E �       ���     ���            EXIT.jpg                    NOT(.FIRE AND .RPC3)  �               @                 �   ���                                      ���                                                                                                       
    @          � e 2 �    ��     ���                                            @         DOOR3_X               ���                              @                                                                                                         
    @        �EnD      ���     ���            EXIT.jpg                    NOT(.FIRE AND .RPC1)  �               @                 �   ���                                      ���                                                                                                     
    @        ��E(�      ���     ���            EXIT.jpg                    NOT(.FIRE AND .RPC0)  �               @                 �   ���                                      ���                                                                                                       
    @          e �2 D   ��     ���                                            @         DOOR1_X               ���                              @                                                                                                           
    @          �e ?2    ��     ���                                            @         DOOR0_X               ���                              @             �   ��   �   ��   � � � ���     �   ��   �   ��   � � � ���                  ����, 4 4 �         #   standard.lib 4.10.05 12:14:46 @VBC   Util.lib 18.5.10 16:14:28 @Ġ�K      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        	   RTC @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @               5   BCD_TO_INT @      GEN_MODE       POINT                  BLINK @          CHARCURVE @          DERIVATIVE @          EXTRACT @          FREQ_MEASURE @       	   GEN @          HYSTERESIS @          INT_TO_BCD @          INTEGRAL @          LIMITALARM @          LIN_TRAFO @       
   PACK @          PD @       	   PID @          PID_FIXCYCLE @          PUTBIT @          RAMP_INT @          RAMP_REAL @          STATISTICS_INT @          STATISTICS_REAL @          UNPACK @          VARIANCE @          Version_Util @             Globale_Variablen @                          ��������           2 �  �           ����������������  
             ����,   ��        ����, 4 4 �                      POUs	                 Button_detection  L                   Closing                     Intermediate_stop                     Main                Blackout                	   Emergency                    Fire_detection                    Floor_detection                    Init_procedure                 
   OpCl_doors                    Position_control                    State                        Opening  !                   Req_serviced  "                   Sensor_simulation  #                	   Weight_IN  $                
   Weight_OUT  %   ����          
   Data types  ����              Visualizations                 CHRONO  J                  Elevator_simulation  X   ����              Global Variables                Global_Variables                     Variable_Configuration  	   ����                                         ��������             :�FW                         	   localhost            P      	   localhost            P      	   localhost            P     �?HW    ێ�B