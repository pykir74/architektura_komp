.globl _start
.text

kwadrat: 
    mov %EBX, %EAX   
    mul %EBX         
    mov %EAX, %EBX   

    mov %ECX, %EAX   
    mul %ECX         
    mov %EAX, %ECX   

    mov %EDX, %EAX   
    mul %EDX        
    mov %EAX, %ESI   
    
    ret

check:
    mov %EBX, %EAX
    add %ECX, %EAX
    cmp %ESI, %EAX
    je TRUE

    mov %EBX, %EAX
    add %ESI, %EAX
    cmp %ECX, %EAX
    je TRUE

    mov %ECX, %EAX
    add %ESI, %EAX
    cmp %EBX, %EAX
    je TRUE

    mov $0, %EAX    
    ret

TRUE:
    mov $0, %EAX     
    mov $1, %AL      
    ret

_start: 
    mov $5, %EBX 
    mov $3, %ECX 
    mov $2, %EDX 

__begin:

    call kwadrat     
    call check       

__end:
    mov %EAX, %EBX
    mov $1, %EAX