    MOV   R1, #1        // R1 = a = 1
    MOV   R2, #0        // R2 = b = 0

while:
    CMP   R1, #5      // compare a to 500
    BGT   endwhile      // if a > 500, branch to end

    LSL   R1, R1, #1    // a <<= 1  (multiply a by 2)
    ADD   R2, R2, #1    // b += 1

    B     while         // repeat loop

endwhile:
    ADD   R1, R1, #1    // a += 1 after exiting loop