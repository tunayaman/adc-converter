1         LIST	P=16F818 
2       #INCLUDE 	<P16F818.INC> 
3         ORG 	0X00                    ; reset vector 
4         GOTO 	INITIALIZE 
 
5    INITIALIZE   BSF	STATUS, RP0    ; switch to bank 1 
6       MOVLW	0X01 
7       MOVWF	TRISA                ; make only RA0 as input 
8       CLRF	TRISB 
9       MOVLW	OX8E 
10     MOVWF	ADCON1            ; AN0 as analog input, VDD  and VSS  as ADC reference 
11     BCF		STATUS, RP0 
12     MOVLW	OXC1 
13     MOVWF 	ADCON0            ; enable adc module, select channel 0  
14 MAIN            BSF 	ADCON0, GO     ; initiate adc 
15 ADCLOOP    BTFSC	ADCON0, GO 
16  GOTO                   ADCLOOP	; wait for the ADC to complete 
17 	RLF	ADRESH, W	; read ADRESH ADC results 
18	MOVWF 	PORTA	; write to RA1 and RA2 
19	BSF	STATUS, RP0	; bank 1 
20	MOVF	ADRESL, W	; read ADC results in ADRESL register  
21	BCF 	STATUS, RP0	; bank 0 
22	MOVWF 	PORTB	; write the value to PORTB 
23	GOTO	MAIN 
24 
25	END	
