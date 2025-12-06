.globl _start

.data
tab: .long 12, 2, 4, 6, 100
end_tab:
.equ tab_bytes, end_tab - tab
.equ tab_size, (end_tab - tab)/4
.text

srednia: 
    mov $0, %EAX
    mov $0, %ESI # i = 0
    pop %EDI # adr powrotu
LOOP:
    cmp %ECX, %ESI
    je DONE
    add (%EBX), %EAX #() - odczytaj wartosc tego adresu
    add $4, %EBX #dodaj 4 bajty (32 bity) do adresu
    inc %ESI
    jmp LOOP
DONE:
    div %ESI
    push %EDI
    ret

_start: 
    mov $tab, %EBX #tu przenosi adres 1 elemtenu 
    mov $tab_size, %ECX #tu przenosi STAŁĄ do ECX
__begin:
    call srednia
    nop
__end:
    nop