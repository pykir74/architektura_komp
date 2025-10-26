.globl _start
.text
_start: 
    mov $18, %EBX
    mov $12, %ECX
    mov $26, %EDX
__begin:
    cmp %EBX, %ECX 
    jge MAX_B
    mov %EBX, %ECX
MAX_B:
    cmp %ECX, %EDX
    jge MAX_2
    mov %ECX, %EDX
MAX_2:
    mov %EDX, %EAX
__end:
    nop