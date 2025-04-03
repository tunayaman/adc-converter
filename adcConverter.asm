{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\froman\fcharset0 TimesNewRomanPSMT;\f1\fswiss\fcharset0 Helvetica;\f2\froman\fcharset0 TimesNewRomanPS-BoldMT;
\f3\fswiss\fcharset0 Arial-BoldMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0\c84706;\cssrgb\c100000\c100000\c100000;}
\paperw11900\paperh16840\margl1440\margr1440\vieww28600\viewh18000\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs32 \AppleTypeServices\AppleTypeServicesF65539 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 1\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0 LIST
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 P=16F818
\f2\b \AppleTypeServices \'a0
\f3\fs24 \cb1 \

\f0\b0\fs32 \AppleTypeServices\AppleTypeServicesF65539 \cb3 2\'a0\'a0\'a0\'a0\'a0\'a0 #INCLUDE 
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 <P16F818.INC>
\f2\b \AppleTypeServices \'a0
\f3\fs24 \cb1 \
\pard\pardeftab720\partightenfactor0

\f2\fs32 \cf2 \cb3 \'a0
\f0\b0 \AppleTypeServices\AppleTypeServicesF65539 3\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0 ORG 
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 0X00\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0 ; reset vector
\f2\b \AppleTypeServices \'a0
\f3\fs24 \cb1 \
\pard\pardeftab720\partightenfactor0

\f0\b0\fs32 \AppleTypeServices\AppleTypeServicesF65539 \cf2 \cb3 4\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0 GOTO 
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 INITIALIZE
\f2\b \AppleTypeServices \'a0
\f3\fs24 \cb1 \
\pard\pardeftab720\fi960\partightenfactor0

\f2\fs32 \cf2 \cb3 \'a0
\f3\fs24 \cb1 \
\pard\pardeftab720\partightenfactor0

\f0\b0\fs32 \AppleTypeServices\AppleTypeServicesF65539 \cf2 \cb3 5\'a0\'a0\'a0 INITIALIZE\'a0\'a0 BSF
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 STATUS, RP0\'a0\'a0\'a0 ; switch to bank 1
\f2\b \AppleTypeServices \'a0
\f3\fs24 \cb1 \

\f0\b0\fs32 \AppleTypeServices\AppleTypeServicesF65539 \cb3 6\'a0\'a0\'a0\'a0\'a0\'a0 MOVLW
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 0X01
\f2\b \AppleTypeServices \'a0
\f3\fs24 \cb1 \

\f0\b0\fs32 \AppleTypeServices\AppleTypeServicesF65539 \cb3 7\'a0\'a0\'a0\'a0\'a0\'a0 MOVWF
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 TRISA\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0 ; make only RA0 as input
\f2\b \AppleTypeServices \'a0
\f3\fs24 \cb1 \

\f0\b0\fs32 \AppleTypeServices\AppleTypeServicesF65539 \cb3 8\'a0\'a0\'a0\'a0\'a0\'a0 CLRF
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 TRISB
\f2\b \AppleTypeServices \'a0
\f3\fs24 \cb1 \

\f0\b0\fs32 \AppleTypeServices\AppleTypeServicesF65539 \cb3 9\'a0\'a0\'a0\'a0\'a0\'a0 MOVLW
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 OX8E
\f2\b \AppleTypeServices \'a0
\f3\fs24 \cb1 \

\f0\b0\fs32 \AppleTypeServices\AppleTypeServicesF65539 \cb3 10\'a0\'a0\'a0\'a0 MOVWF
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 ADCON1\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0 ; AN0 as analog input, V
\fs25\fsmilli12667 \AppleTypeServices\AppleTypeServicesF65539 \sub DD\'a0 
\fs32 \AppleTypeServices\AppleTypeServicesF65539 \nosupersub and V
\fs25\fsmilli12667 \AppleTypeServices\AppleTypeServicesF65539 \sub SS\'a0 
\fs32 \AppleTypeServices\AppleTypeServicesF65539 \nosupersub as ADC reference
\f2\b \AppleTypeServices \'a0
\f3\fs24 \cb1 \

\f0\b0\fs32 \AppleTypeServices\AppleTypeServicesF65539 \cb3 11\'a0\'a0\'a0\'a0 BCF
\f1 \AppleTypeServices 		
\f0 \AppleTypeServices\AppleTypeServicesF65539 STATUS, RP0
\f2\b \AppleTypeServices \'a0
\f3\fs24 \cb1 \

\f0\b0\fs32 \AppleTypeServices\AppleTypeServicesF65539 \cb3 12\'a0\'a0\'a0\'a0 MOVLW
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 OXC1
\f2\b \AppleTypeServices \'a0
\f3\fs24 \cb1 \

\f0\b0\fs32 \AppleTypeServices\AppleTypeServicesF65539 \cb3 13\'a0\'a0\'a0\'a0 MOVWF 
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 ADCON0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0 ; enable adc module, select channel 0\'a0
\f2\b \AppleTypeServices \'a0
\f3\fs24 \cb1 \

\f0\b0\fs32 \AppleTypeServices\AppleTypeServicesF65539 \cb3 14 MAIN\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0 BSF 
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 ADCON0, GO\'a0\'a0\'a0\'a0 ; initiate adc
\f2\b \AppleTypeServices \'a0
\f3\fs24 \cb1 \

\f0\b0\fs32 \AppleTypeServices\AppleTypeServicesF65539 \cb3 15 ADCLOOP\'a0\'a0\'a0 BTFSC
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 ADCON0, GO
\f2\b \AppleTypeServices \'a0
\f3\fs24 \cb1 \

\f0\b0\fs32 \AppleTypeServices\AppleTypeServicesF65539 \cb3 16  GOTO\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0 ADCLOOP
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 ; wait for the ADC to complete
\f2\b \AppleTypeServices \'a0
\f3\fs24 \cb1 \

\f0\b0\fs32 \AppleTypeServices\AppleTypeServicesF65539 \cb3 17 
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 RLF
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 ADRESH, W
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 ; read ADRESH ADC results
\f2\b \AppleTypeServices \'a0
\f3\fs24 \cb1 \

\f0\b0\fs32 \AppleTypeServices\AppleTypeServicesF65539 \cb3 18
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 MOVWF 
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 PORTA
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 ; write to RA1 and RA2
\f2\b \AppleTypeServices \'a0
\f3\fs24 \cb1 \

\f0\b0\fs32 \AppleTypeServices\AppleTypeServicesF65539 \cb3 19
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 BSF
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 STATUS, RP0
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 ; bank 1
\f2\b \AppleTypeServices \'a0
\f3\fs24 \cb1 \

\f0\b0\fs32 \AppleTypeServices\AppleTypeServicesF65539 \cb3 20
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 MOVF
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 ADRESL, W
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 ; read ADC results in ADRESL register\'a0
\f2\b \AppleTypeServices \'a0
\f3\fs24 \cb1 \

\f0\b0\fs32 \AppleTypeServices\AppleTypeServicesF65539 \cb3 21
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 BCF 
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 STATUS, RP0
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 ; bank 0
\f2\b \AppleTypeServices \'a0
\f3\fs24 \cb1 \

\f0\b0\fs32 \AppleTypeServices\AppleTypeServicesF65539 \cb3 22
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 MOVWF 
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 PORTB
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 ; write the value to PORTB
\f2\b \AppleTypeServices \'a0
\f3\fs24 \cb1 \

\f0\b0\fs32 \AppleTypeServices\AppleTypeServicesF65539 \cb3 23
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 GOTO
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 MAIN
\f2\b \AppleTypeServices \'a0
\f3\fs24 \cb1 \

\f0\b0\fs32 \AppleTypeServices\AppleTypeServicesF65539 \cb3 24
\f2\b \AppleTypeServices \'a0
\f3\fs24 \cb1 \

\f0\b0\fs32 \AppleTypeServices\AppleTypeServicesF65539 \cb3 25
\f1 \AppleTypeServices 	
\f0 \AppleTypeServices\AppleTypeServicesF65539 END
\f1 \AppleTypeServices 	\cb1 \
\
\pard\pardeftab720\partightenfactor0

\f2\b \cf2 \cb3 \'a0
\f3\fs24 \cb1 \
}