.globl _start
.text
_start: 
    mov $3, %EBX
    mov $3, %ECX
    mov $1, %ESI
__begin:
    mov %EBX, %EAX
LOOP:
    mul %EBX
    inc %ESI
    cmp %ECX, %ESI
    jl LOOP
    mov %EAX, %EDX
__end:
    nop