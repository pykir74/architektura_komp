.globl _start
.text
_start: 
    mov $1989, %EAX
    mov $867, %EBX
__begin:
LOOP:
    cmp %EAX, %EBX
    jg ODWROC
    sub %EBX, %EAX
    cmp %EAX, %EBX
    jl SKIP
ODWROC:
    sub %EAX, %EBX    
SKIP:
    nop
    cmp %EAX, %EBX
    jne LOOP
__end:
    nop