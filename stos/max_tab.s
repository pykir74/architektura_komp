.globl _start
.data
tab: .long 15, 12, 16
end_tab:
.equ tab_bytes, end_tab - tab
.equ tab_size, (end_tab - tab)/4
.text

MAX:
        pop %EDX # adres powrotu
        
        pop %EAX
        pop %EBX
        pop %ECX

        cmp %EAX, %EBX 
        jle MAX_C
        mov %EBX, %EAX
    MAX_C:
        cmp %EAX, %ECX
        jle MAX_A
        mov %ECX, %EAX
    MAX_A:
        push %EDX
        ret

_start: 
    mov tab, %EAX
    mov $0, %ESI

__begin:
LOOP:
    cmp $3, %ESI
    jge END_LOOP 
    push tab(, %ESI, 4)
    inc %ESI
    jmp LOOP
END_LOOP:
    call MAX
    nop
__end:
    nop
