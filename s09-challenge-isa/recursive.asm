.global _start
// return val
// r0 -> cociente
// r1 -> resto
unsigneddiv:
if1:
	cmp r1, #0
	bne if2
	mov r1, r0 // resto = dividiendo
	mov r0, #0
	mov pc, lr
if2:
	cmp r0,r1
	bge else
	mov r1, r0 // resto = dividiendo
	mov r0, #0
	mov pc, lr

else:
	// r0 = nuevoDividiendo
	push {lr, r0,r1}
	sub r0, r0, r1 // nuevo dividiendo
	
	bl unsigneddiv
	mov r2, r0 // cociente parcial
	mov r3, r1 // resto parcial
	pop {lr, r0,r1}
	add r0, r2,#1
	mov r1, r3 // resto = resto parcial
	mov pc, lr
_start:
mov r0, #23 // dividiendo - cociente
mov r1, #4 // divisor - resto
mov r2, #0
mov r3, #0
bl unsigneddiv
end:


	