.global _start
	F:
        push {lr}  // guardar lr
        ldr r7, [r0, r2, lsl #2] // cargar v[i] en r7
        push {r7, r2} // guardar v[i] e índice i

        lsl r5, r2, #1 // r5 = 2*i
        add r5, r5, #1 // r5 = 2*i+1 (hijo izquierdo)
        cmp r1, r5  // comparar n con indice hijo izquierdo
        bgt NOBASE // si existe hijo izquierdo, ir a caso recursivo

        // caso base
        mov r4, r7  // r4 = v[i]
        mov r3, r2 // r3 = i
        add sp, sp, #12 // limpiar stack (lr, v[i], i), como un pop
        mov pc, lr       

NOBASE:
        add r6, r5, #1 // r6 = 2*i+2 (hijo derecho)

        // izquierda
        mov r2, r5  // OJO: r2 = índice hijo izquierdo
        bl F    // retorna r3=ruta_izq, r4=suma_izq
        push {r3, r4} // OJO: guardar ruta_izq y suma_izq

        // derecha
        mov r2, r6 // OJO: r2 = índice hijo derecho
        bl F // retorna r3=ruta_der, r4=suma_der
        pop {r5, r6} // OJO: r5=ruta_izq, r6=suma_izq

        cmp r6, r4 // comparar suma_izq con suma_der
        bgt LEFT
        b RIGHT

LEFT:
        mov r3, r5 // escoger ruta_izq
        mov r4, r6 // escoger suma_izq
        b ADD

RIGHT:
        // r3=ruta_der, r4=suma_der

ADD:
        pop   {r2, r7, lr} // r2 = i, r7 = v[i], lr = return‐addr
    	add   r4, r4, r7  // suma v[i] al acumulador r4
    	mov   pc, lr         

_start:
		// ARCH:
		// cargar el vector
        mov r0, #0x1000 // dirección base del array
		push {r1}
        mov r1, #3 
        str r1, [r0]
        mov r1, #2 
        str r1, [r0, #4]
        mov r1, #6 
        str r1, [r0, #8]
		mov r1, #3 
        str r1, [r0, #12]
		mov r1, #5 
        str r1, [r0, #16]
		pop {r1}
		
        mov r1, #5  // n = 3
        mov r2, #0 // i = 0
        bl F           

		end: