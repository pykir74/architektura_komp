.globl _start
.text
_start: 
    mov $5, %EBX
    mov $1, %ECX
    mov $1, %ESI
__begin:
    mov %ECX, %EAX
LOOP:
    mul %ESI
    inc %ESI
    cmp %EBX, %ESI
    jle LOOP
    mov %EAX, %EDX
__end:
    nop