.globl _start
.data
# debug: (gdb) x/s &nap
nap: .ascii "teS12t"
    .byte 0
.text
_start: 
    mov $0, %EBX
    mov $0, %EAX
__begin:
LOOP:
    cmpb $0, nap(, %EBX, 1)
    je SKIP
    cmpb $'z', nap(, %EBX, 1)
    jg NOT_BIG
    cmpb $'a', nap(, %EBX, 1)
    jl NOT_BIG
    sub $32, nap(, %EBX, 1)
NOT_BIG:
    inc %EBX
    jmp LOOP
SKIP:

__end:
    nop