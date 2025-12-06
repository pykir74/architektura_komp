.globl _start
.text

potega: 
    pop %ECX
    pop %EDI #wykladnik
    pop %EBX #podstawa
    mov %EBX, %EAX
    mov $1, %ESI # i = 0
LOOP:
    mul %EBX
    inc %ESI
    cmp %EDI, %ESI
    jl LOOP
    nop
    push %ECX
    mov $0, %ECX
    ret

_start: 
    mov $4, %EBX
    mov $3, %ECX
__begin:
    push %EBX
    push %ECX
    call potega
    nop
__end:
    nop