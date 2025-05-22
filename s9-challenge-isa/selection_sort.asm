.global _start
_start:
        MOV     R0, #0x100      // R0 = base del array
        MOV     R1, #3          // R1 = size

        // array[0] = 2
        MOV     R2, #2
        STR     R2, [R0, #0]

        // array[1] = 1
        MOV     R2, #1
        STR     R2, [R0, #4]

        // array[2] = 3
        MOV     R2, #3
        STR     R2, [R0, #8]

        BL      selection_sort

        
selection_sort:
        CMP     R1, #2          // if size < 2
        BLT     sort_end

        MOV     R2, #0          // i = 0

loop_i:
        // Comprobar i < size-1  → size - i > 1
        SUB     R3, R1, R2      // R3 = size - i
        CMP     R3, #1
        BLT     sort_end

        MOV     R4, R2          // min = i
        ADD     R5, R2, #1      // j = i + 1

loop_j:
        CMP     R5, R1          // j < size 
        BGE     after_j

        // cargar array[j] y array[min]
        LDR     R6, [R0, R5, LSL #2]
        LDR     R7, [R0, R4, LSL #2]
        CMP     R6, R7
        BGE     next_j
        MOV     R4, R5          // min = j

next_j:
        ADD     R5, R5, #1
        B       loop_j

after_j:
        CMP     R4, R2          // if (min != i)
        BEQ     next_i

        // swap tmp = array[i]
        LDR     R6, [R0, R2, LSL #2]
        LDR     R7, [R0, R4, LSL #2]
        STR     R7, [R0, R2, LSL #2]
        STR     R6, [R0, R4, LSL #2]

next_i:
        ADD     R2, R2, #1      // ++i
        B       loop_i

sort_end:
        MOV     PC, LR