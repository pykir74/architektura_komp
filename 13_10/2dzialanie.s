.globl _start
.text
_start: 
    mov $2, %EAX
    mov $3, %EBX
    mov $1, %ECX
    mov $5, %EDX
__begin:
    mov %EAX, %ESI
    mov %EDX, %EAX
    imul %EAX
    mov %EAX, %EDX
__end:
    nop