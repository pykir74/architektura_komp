.globl _start
.text
_start: 
    mov $0, %EAX
    mov $9, %ECX
    mov $1, %ESI
    mov $0, %EDI
__begin:
LOOP:
    mov %ESI, %EAX
    mul %ESI

    cmp %ECX, %EAX 
    jge SKIP_LOOP  

    inc %ESI
    cmp %ECX, %EAX
    jl LOOP
    nop
SKIP_LOOP:
    mov %ESI, %EBX
__end:
    nop