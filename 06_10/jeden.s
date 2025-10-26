.globl _start
.text
_start: 
    mov $10, %EAX
    mov $12, %EBX
    nop
    add %EAX, %EBX
    #eax = 10, ebx = 22