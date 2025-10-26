.globl _start
.text
_start: 
    mov $0, %EAX
    mov $17, %ECX
    mov $1, %ESI
    mov $0, %EDI
    mov $0, %EBX
__begin:
LOOP:
    mov %ESI, %EAX
    mul %ESI

    cmp %ECX, %EAX 
    jg SKIP_LOOP  

    inc %ESI
    jmp LOOP

SKIP_LOOP:
    dec %ESI
TS:
    mov %ESI, %EBX
__end:
    nop