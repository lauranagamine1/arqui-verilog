		MOV		R6, #0x400
		
		MOV		R0, #2
		STR		R0, [R6, #0]
		
		MOV		R0, #3
		STR		R0, [R6, #4]
		
		MOV		R0, #4
		STR		R0, [R6, #8]
		
		MOV		R0, #7
		STR		R0, [R6, #12]
		
		MOV		R0, #8
		STR		R0, [R6, #16]
		
		;		invertir el array
		
		;		intercambiar array[0] y array[4]
		LDR		R0, [R6, #0]
		LDR		R1, [R6, #16]
		STR		R0, [R6, #16]
		STR		R1, [R6, #0]
		
		;		intercambiar array[1] y array[3]
		LDR		R0, [R6, #4]
		LDR		R1, [R6, #12]
		STR		R0, [R6, #12]
		STR		R1, [R6, #4]
		
		; suma de todos los elementos en R1 
		MOV		R1, #0
		MOV		R2, #0
		
loop
		LDR		R3, [R6, R2]
		ADD		R1, R1, R3
		ADD		R2, R2, #4
		CMP		R2, #20
		BNE		loop
