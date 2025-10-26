.globl _start
.text
_start: 
    mov $7, %EBX 
    mov $12, %ECX
__begin:
    mov %EBX, %EAX
    mul %EAX
    mov %EAX, %EBX
    #------
    mov %ECX, %EAX
    mul %EAX
    mov %EAX, %ECX
    #------
    add %ECX, %EBX
    mov %EBX, %EDX
__end:
    nop