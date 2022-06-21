	AREA PROG2, CODE, READONLY
		ENTRY
		LDR R0, FACT; Store 10 in R0 to run the loop for 10 times
		MOV R1, #01; Store 1 in R1 register
SUMS	ADD R2, #01; R2 will be incremented by 1 each time to represent increasing integer values
		MUL R3, R1, R2; Multiply R1 and R2, Store result in R3
		MOV R1, R3; Move result to R1
		SUB R0, #01; Subtracting 1 from R0 until it reaches 0
		CMP R0, #0; Compare R0 to 1
		BNE SUMS; Loop back to SUMS until R0 != 0
		
FACT DCD 10; Create a variable FACT to store the factorial number
		
B1 B B1
	END