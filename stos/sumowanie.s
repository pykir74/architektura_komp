.globl _start

.data
tab: .long 15, 12, 16
end_tab:
.equ tab_bytes, end_tab - tab
.equ tab_size, (end_tab - tab)/4
.text

sumuj: 
    mov $0, %EAX
    pop %ECX # adr powrotu
LOOP:
    cmp %ESP, %EBP
    je DONE
    pop %EBX
    add %EBX, %EAX
    jmp LOOP
DONE:
    push %ECX
    ret

_start: 
    mov $4, %EBX
    mov $3, %ECX
__begin:
    mov %ESP, %EBP
LOL:
    cmp $tab_size, %ESI
    jge END_LOOP 
    push tab(, %ESI, 4)
    inc %ESI
    jmp LOL
END_LOOP:
    call sumuj
    nop
__end:
    nop