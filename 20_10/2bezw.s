.globl _start
.text
_start: 
    mov $12, %EDX
    mov $18, %ECX
    mov $0, %EBX
__begin:
    sub %EDX, %ECX
    cmp %EBX, %ECX 
    jg CON
    mov %ECX, %EAX
    mov $-1, %EBX
    imul %EBX, %EAX
    mov %EAX, %ECX
CON:
    mov %ECX, %EBX
__end:
    nop