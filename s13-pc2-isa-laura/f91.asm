.global _start

	f91:
		if1:
			CMP R0, #101
			BLT if2
			sub r0, r0, #10 // n = n-10
			mov pc, lr // return n-10
		if2:
			push {lr}
			add r0, r0, #11
			bl f91 // f91(n+11)
			
			bl f91 // segundo f91
			pop {lr}
			mov pc,lr
_start:
	
	MOV R0, #102
	BL f91
	B EXIT
	
	EXIT: