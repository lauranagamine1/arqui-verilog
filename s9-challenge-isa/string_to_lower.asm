.global _start
_start:
	
	MOV R0, #0x100 //direccion
	MOV R1, #0 //indice
	BL string_to_lowercase
	
	string_to_lowercase:
	for:
	LDRB R2, [R0, R1]
	CMP R2, #0x00
	BEQ end //Si es el ultimo elemento, acaba el programa
	
	CMP R2, #0x41 //si es menor a "A", no lo cambia
	BLT notupper
	CMP R2, #0x5A // si es mayor a "Z", no lo cambia
	BGT notupper
	
	ADD R2, R2, #0x20 //transmoración a minúscula
	STRB R2, [R0,R1]
	
	notupper:
	ADD R1, R1, #1 // i = i+1
	B for
	end:
	MOV PC, LR
