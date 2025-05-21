MOV R0, #4
	CMP R0, #10
	BGE if
	B endif
	
	if:
	MOV R1, #1
	
	endif:
	MOV R1, #2