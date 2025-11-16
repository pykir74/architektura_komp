.globl _start
.data
# debug: (gdb) x/s &nap
#nap: .ascii "teS12t"
nap: .ascii "kajak"
    .byte 0
.text
_start: 
    mov $0, %EBX
    mov $0, %EAX
    mov $0, %ECX
__begin:

STRING_SIZE:
    cmpb $0, nap(, %EBX, 1)
    je SS_END
    inc %EBX
    jmp STRING_SIZE
SS_END:
    mov %EBX, %ESI #tab_size in ESI
    mov $0, %EBX

LOOP:
    cmpb $0, nap(, %EBX, 1)
    je END_LOOP

    dec %ESI

    mov nap(, %EBX, 1), %AL  
    cmpb %AL, nap(, %ESI, 1) 
    je SKIP
    mov $1, %EAX # 1 = NOT A PALINDROM
SKIP:
    inc %EBX
    jmp LOOP

END_LOOP:
__end:
    nop