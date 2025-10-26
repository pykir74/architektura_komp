.globl _start
.text
_start: 
    mov $15, %EAX
    mov $19, %EBX
    mov $2, %ECX
__begin:
    sub %EBX, %EAX
    add %EBX, %EDX
    mov %EDX, %ECX
__end:
    nop
    #eax = 10, ebx = 22