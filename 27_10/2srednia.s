.globl _start
.data
tab: .long 5, 1, 6, -4, 0, 13
end_tab:
.equ tab_bytes, end_tab - tab
.equ tab_size, (end_tab - tab)/4
.text
_start: 
    mov $0, %EAX
    mov $0, %EBX
    mov $0, %ECX
    mov $0, %ESI
__begin:
LOOP:
    cmp $tab_size, %EBX
    jge END_LOOP    
    cmp %ECX, tab(, %EBX, 4)
    jle SKIP
    add tab(, %EBX, 4), %EAX
    inc %ESi
    nop
SKIP:
    inc %EBX
    nop
    jmp LOOP
END_LOOP:
    div %ESI
    nop
__end:
    nop