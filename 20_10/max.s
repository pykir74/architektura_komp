.globl _start
.text
_start: 
    mov $12, %EAX
    mov $17, %EBX
__begin:
    cmp %EAX, %EBX 
    jge MAX_B
    mov %EAX, %EBX
MAX_B:
    mov %EBX, %ECX
__end:
    nop