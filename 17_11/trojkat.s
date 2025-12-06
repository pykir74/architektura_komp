.globl _start
.text

kwadrat: 
    push %EBX
    push %ECX
    push %ESI
    
    pop %EAX
    mul %EAX
    mov %EAX, %ESI
    
    pop %EAX
    mul %EAX
    mov %EAX, %ECX
    
    pop %EAX
    mul %EAX
    mov %EAX, %EBX

    mov $0, %EAX  
    ret

check:
    push %EBX
    add %ECX, %EBX
    cmp %ESI, %EBX
    je TRUE
    pop %EBX

    push %ECX
    add %ESI, %ECX
    cmp %EBX, %ECX
    je TRUE
    pop %ECX

    push %ESI
    add %ESI, %EBX
    cmp %ECX, %EBX
    je TRUE
    pop %ESI
    mov $0, %EAX
    mov $0, %AL
    ret

TRUE:
    mov $0, %EAX
    mov $1, %AL
    ret

_start: 

    mov $5, %EBX 
    mov $3, %ECX 
    mov $4, %EDX 

__begin:
    mov %EDX, %ESI
    jmp kwadrat
    mov %ESI, %EAX
    jmp check
    nop
    


__end:
    nop