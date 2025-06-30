.global _start
Array: .word 2,3,1
swap: 
push {r2}
mov r2,r0 // r2 temp
mov r0, r1
mov r1, r2
pop {r2}
mov pc, lr


partition:
push {r4}
lsl r4, r2, #2 // r4: var temporal para offset
ldr r3, [r0,r4] // pivot
pop {r4}
sub r4, r1, #1 // r4=i

push {r5}
mov r5, r4 // r5=j = low
b for

continue:
push {r0, r1,r4,r6}
add r4, r4,#1 // i
lsl r6,r4,#2
ldr r7,[r0,r6]
mov r0, r7
lsl r6,r5,#2
ldr r7,[r0,r6]
mov r1, r7
push {lr}
bl swap
pop {lr}
mov r7,r0 
mov r8,r1
pop {r0,r1,r4,r6}
// return
mov r0,r8
mov r1,r7
add r4,r4,#1
mov pc, lr

///////////
for:
cmp r5,r2
bge continue
if:
lsl r4,r5,#2 // offset j
ldr r6,[r0,r4] // r6= arr[j]
cmp r6, r3
add r5,r5,#1 // j++
pop {r5}
blt for
add r4, r4,#1 // i++
push {r0, r1}
mov r0, r6
lsl r4,r4,#2 // offset i
ldr r1, [r0,r4] // r1 = arr[i]
push {lr}
bl swap // usa r0 y r1 para swap
pop {lr}
mov r7, r0 // r7=arr[j]
mov r8, r1 // r8=arr[i]
pop {r0,r1}
str r8, [r0,r4] // str arr[i]
lsl r4,r5,#2 // offset i
str r7, [r0,r4] // str arr[j]
// fin de if
b for



_start:
ldr r0, =Array // r0=arr[]
mov r1, #0 // r1=low
mov r2, #2 // r2=high
bl partition
b end

////////////////////////////////



end:

