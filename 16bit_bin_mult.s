;----------------------------------------------------------------
; Program to multiply two 16-bit Binary Numbers

	AREA PROGRAM2, CODE, READONLY
		ENTRY
		LDRH R1, N1; Load the value stored in N1 into the register R1
		LDRH R2, N2; Load the value stored in N2 into the register R2
		MUL R3, R1, R2; R3 = R1 * R2, Here: R3 = 5 * 6 = 30 (Decimal) = 1E (HexaDecimal)
		LDR R0, PROD; Load the address of PROD in R4
		STR R3, [R0]; Store the content of R3 to the memory location stored in R4
		
B1 B B1; Loop B1 to B1

N1 DCW 5; Create a 16-bit variable with label N1 and decimal value 5
N2 DCW 6; Create a 16-bit variable with label N1 and decimal value 6

PROD DCD 0x40000000; Create a 32-bit variable with label PROD and memory location 0x40000000

;----------------------------------------------------------------

; DCD = Define Constant Double : Create a 32-bit variable
; DCW = Define Constant Half-Word : Create a 16-bit variable
; DCB = Define Constant Byte : Create a 8-bit variable

; LDR = Load a 32-bit value from Memory to Register
; LDRH = Load a 16-bit value from Memory to Register
; LDRB = Load a 8-bit value from Memory to Register

; STR = Store a 32-bit value from Register to Memory
; STRH = Store a 16-bit value from Register to Memory
; STRB = Store a 8-bit value from Register to Memory

;----------------------------------------------------------------

	END