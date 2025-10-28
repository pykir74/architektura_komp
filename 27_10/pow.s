.globl _start
.data
tab: .long 5, 12, 6, -4, 0, 1
end_tab:
.equ tab_bytes, end_tab - tab
.equ tab_size, (end_tab - tab)/4
.text
_start: 
    mov tab, %EAX
    mov $0, %EBX
__begin:
LOOP:
    cmp $tab_size, %EBX
    jge END_LOOP    
    mov %EBX, %EAX
    mul %EAX
    mov tab(, %EBX, 4) 
SKIP:
    inc %EBX
    jmp LOOP
END_LOOP:
    nop
__end:
    nop