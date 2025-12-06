.globl _start
.data
tab: .long 15, 100, 12
end_tab:
.equ tab_bytes, end_tab - tab
.equ tab_size, (end_tab - tab)/4
.text

# NAJGORSZY KOD W HISTORII ALE DZIAŁA

MAX:
        pop %EDX # adres powrotu
        mov $0, %EDI #do liczenia
        pop %EAX
        pop %EBX
        pop %ECX
        mov %EAX, %ESI # zeby nie nadpisac

        cmp %ESI, %EBX 
        jle MAX_C
        mov %EBX, %ESI
    MAX_C:
        cmp %ESI, %ECX
        jle MAX_A
        mov %ECX, %ESI
    MAX_A:
        cmp %ESI, %EAX
        je DODAJB_C
        cmp %ESI, %EBX
        je DODAJA_C
        add %EAX, %EBX #ECX max
        jmp KONIEC
        DODAJB_C:
            add %EBX, %ECX #EAX max
            mov %ECX, %EBX
            mov %EAX, %ECX
            jmp KONIEC
        DODAJA_C:
            add %EAX, %ECX #EBX max
            mov %EDX, %EDI
            mov %EBX, %EDX
            mov %ECX, %EBX
            mov %EDX, %ECX
    KONIEC:
        mov $0, %EAX
        cmp %ECX, %EBX
        jle XD
        inc %EAX
    XD:
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
