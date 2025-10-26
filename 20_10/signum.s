.globl _start
.text
_start: 
    mov $-2, %EBX
    mov $-1, %ECX
    mov $0, %EDX
__begin:
    cmp %EDX, %EBX 
    jle DWA
    inc %ECX
DWA: # = 0
    cmp %EDX, %EBX
    jl TRZY
    inc %ECX
TRZY:
    mov %ECX, %EAX
__end:
    nop