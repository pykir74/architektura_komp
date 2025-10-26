.globl _start
.text
_start: 
    mov $74, %EAX
    mov $10, %ECX
__begin:
    div %ECX
    mov %EDX, %EBX
    mul %EAX
    
    mov %EAX, %ECX
    mov %EBX, %EAX
    mul %EAX
    add %EAX, %EBX
__end:
    nop