.globl _start
.text
_start: 
    mov $61, %ESI
    mov $10, %EDI
    mov $0, %EBX
__begin:
    mov %ESI, %EAX
    div %EDI
    cmp %EDX, %EBX
    je SKIP 
    inc %EAX
SKIP:
    mov %EAX, %EBX
__end:
    nop