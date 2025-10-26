.globl _start
.text
_start: 
    mov $-12, %EDX
    mov $-1, %EBX
    mov $0, %ECX
__begin:
    cmp %ECX, %EDX 
    jge CON
    mov %EDX, %EAX
    mul %EBX
CON:
    mov %EAX, %EBX
__end:
    nop