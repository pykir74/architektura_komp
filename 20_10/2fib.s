.globl _start
.text
_start: 
    mov $0, %EAX
    mov $1, %EBX
    mov $0, %ESI
    mov $11, %ECX
    mov $0, %EDI
__begin:
LOOP:
    mov %EBX, %EDX
    add %EAX, %EBX
    mov %EDX, %EAX
    inc %ESI
    add %EAX, %EDI
    cmp %ECX, %ESI
    jl LOOP
    mov %EDI, %EAX
__end:
    nop