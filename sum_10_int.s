	AREA PROG2, CODE, READONLY
		ENTRY
		MOV R0, #10; Store 10 in R0 to run the loop for 10 times
SUMS	ADD R2, #01; R2 will be incremented by 1 each time to represent increasing integer values
		ADD R1, R2; R2 will be added to R1 every time SUMS loop runs
		SUB R0, #01; Subtracting 1 from R0 until it reaches 0
		CMP R0, #0; Compare R0 to 1
		BNE SUMS; Loop back to SUMS until register R0 != 0
		
B1 B B1
	END