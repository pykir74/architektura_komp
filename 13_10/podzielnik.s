.globl _start
.text
_start: 
    mov $74, %EDI
    mov $10, %ESI
__begin:
    mov %EDI, %EAX
    div %ESI
    mov %EDX, %EAX
__end:
    nop