.global _start
suma:
	if:
		cmp r0, #0
		bne else
		mov pc, lr // return b
		else:
			push {lr}
			sub r0, r0, #1 // a-1
			add r1, r1, #1 // b+1
			bl suma
			pop {lr} // todo se guarda en r1
			mov pc, lr
	

_start:
	//r0, r1 inpus de suma
	// r2: i contador
	mov r2, #1
	mov r5,#2
	mov r4, #0
	// variable temporal r3
	for: // 1 a 3
		cmp r2, #3
		bgt end 
		
		push {r2}
		mov r0, r2
		mul r2, r2, r5 // r5 =2
		mov r1, r2
		bl suma
		mov r3, r1 // guarda todo en r1
		pop {r2}
		add r4, r4, r3
		add r2, r2, #1
		b for
	end:
			