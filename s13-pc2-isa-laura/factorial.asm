.global _start
FACTORIAL:
		IF:	
			CMP R0, #1
			BGT ELSE
			MOV R0, #1  // r0 = 1 y retorna 1
			MOV PC, LR
		ELSE:
			PUSH {R0,lr}
			SUB R0, R0, #1 // n-1
			BL FACTORIAL
			MOV R1, R0 // 
			POP {R0, lr}
			MUL R0,R0, R1
			MOV PC, LR
_start:
	
	MOV R0, #5
	BL FACTORIAL
	EXIT: