    
	// FOR: suma de primeros numeros naturales
	// sum=0
	// for (i=1; i!= 10 ; i++)	
	//    sum = sum+1
        
    MOV R0, #1 // R0: i
	MOV R1, #0 // R1: sum
	
	FOR:
	CMP R0,#10
	BEQ DONE // condición de salida
	ADD R1,R1,R0
	ADD R0, R0,#1
	B FOR // bucle "infinito"
	
	DONE: