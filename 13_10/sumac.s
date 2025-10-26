.globl _start
.text
_start: 
    mov $74, %EAX
    mov $10, %ECX
__begin:
    div %ECX
    add %EDX, %EAX
__end:
    nop