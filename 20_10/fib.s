.globl _start
.text
_start: 
    mov $0, %EAX
    mov $1, %EBX
    mov $0, %ESI
    mov $11, %ECX
__begin:
LOOP:
    mov %EBX, %EDX
    add %EAX, %EBX
    mov %EDX, %EAX
    inc %ESI
    cmp %ECX, %ESI
    jl LOOP
__end:
    nop