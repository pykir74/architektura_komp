.globl _start
.data
tab: .long 5, 12, 6, -4, 0, 1
end_tab:
.equ tab_bytes, end_tab - tab
.equ tab_size, (end_tab - tab)/4
.text
_start: 
    mov $0, %EAX
    mov $0, %EBX
    mov $0, %ECX
    mov $4, %EDI
__begin:
LOOP:
    cmp $tab_size, %EBX
    jge END_LOOP    
    cmp %EAX, tab(, %EBX, 4)
    jle SKIP
    mov %EBX, %EDX
    mov tab(, %EBX, 4), %EAX
SKIP:
    inc %EBX
    jmp LOOP
END_LOOP:
    mov %EAX, %ESI
    mov %EBX, %EAX
    mov $tab, %EDX
    mul %EDI
    add %EAX, %EDX
    nop
__end:
    nop

// znajduje najwieksza, trzeba index przepisac