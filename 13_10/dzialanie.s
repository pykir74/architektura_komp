.globl _start
.text
_start: 
    mov $7, %EAX
    mov $1, %EBX
    mov $6, %ECX
__begin:
    imul %EAX
    add %EBX, %EAX
    mov %ECX, %ESI
    cdq
    idiv %ESI
    mov %EAX, %ECX
__end:
    nop