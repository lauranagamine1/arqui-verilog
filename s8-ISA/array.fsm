		MOV		R0, #0x100      ; R0 = base del array en memoria
		MOV		R3, #0          ; R3 = i = 0
		MOV		R2, #5          ; R2 = longitud del array
		
loop
		CMP		R3, R2          ; ¿i == length?
		BEQ		done
		
		LDR		R1, [R0, R3, LSL #2]   ; R1 = array[i]
		ADD		R1, R1, R1            ; R1 *= 2
		STR		R1, [R0, R3, LSL #2]   ; array[i] = R1
		
		ADD		R3, R3, #1      ; i++
		B		loop
		
done
		;		aquí continúa tu código…
		END
