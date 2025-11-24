.globl _start
.text

podprog: 
    #szescian
    mov %EBX, %EAX

    mul %EBX
    mul %EBX
    ret

_start: 
    mov $8, %EBX
    mov $2, %ECX
    mov $2, %EDX

__begin:
    push %EDX #edx sie zeruje przy mnozeniu

    call podprog #b3
    push %EAX #wynik b3 w stosie

    mov %ECX, %EBX
    call podprog #c3
    mov %EAX, %ECX

    pop %EBX
    pop %EDX

    push %EBX
    mov %EDX, %EBX
    call podprog
    mov %EAX, %EDX
    mov $0, %EAX
    pop %EBX

    add %EBX, %ECX #b3+c3
    mov %ECX, %EAX 
    mov %EDX, %EBX
    mov $0, %EDX
    div %EBX
__end:
    nop