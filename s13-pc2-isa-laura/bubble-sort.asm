	Array: .word 5,7,1,2
.global _start

bubblesort:
	mov r2, #0 // j
	mov r3, #0 // i
	for1:
		cmp r2, r1 
		BGE endbubble
		add r2, r2, #1
		mov r3, #0 // i =0, para c/ loop
		b for2
	for2:
		sub r9, r1, #1
		cmp r3, r9
		bge for1
		LSL R4, R3, #2 // i*4 offset
		ldr r5, [r0, r4] // r5 = arr[i]
		add r6, r3, #1
		LSL R7, R6, #2
		
		ldr r8, [r0, r7] // R8 = ARR[I+1]
		cmp r5, r8
		bgt if
		add r3, r3, #1 // i++
		b for2
	if:
		str r8, [r0, r4]
		str r5, [r0, r7]
		b for2
	endbubble:
		mov pc, lr
_start:
	LDR R0, =Array
	mov r1, #4 // tamaño array
	
	BL bubblesort
	exit: