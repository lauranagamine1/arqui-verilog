.global _start
fibonacci:
    cmp r0, #2
    bgt else
    mov r0, #1
    mov pc, lr

	else:
    push {lr, r0}         
    sub r0, r0, #1    // r0 = n-1
    bl fibonacci
    mov r1, r0        // r1 = fib(n-1)
	pop {lr,r0}
	
    sub r0, r0, #2    // r0 = n-2 (n original)
	push {r1, lr} // pushea r1 para que no se sobrescriba con el 
    bl fibonacci
	
	mov r2, r0
	pop {r1,lr}
    add r0, r2, r1    // r0 = fib(n-2) + fib(n-1)
    mov pc, lr
	
_start:
	mov r0, #6
	bl fibonacci
	end: