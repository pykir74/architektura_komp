.globl _start

.data
nap: .ascii "testowy string x"
    .byte 0
end_nap:
.equ nap_size, end_nap - nap    
tab: .long 0, 0, 0 # musi mieć tyle 0, ile jest slow w stringu
end_tab:
.equ tab_bytes, end_tab - tab
.equ tab_size, (end_tab - tab)/4  
.text


string: 
    mov $0, %EAX #licznik

    pop %EDI #powrot
    pop %EBX
LOOP:
    cmpb $0, (%EBX)
    je WORD

    cmpb $'\t', (%EBX)
    je WORD
    cmpb $' ', (%EBX)
    je WORD

    inc %EAX
    inc %EBX
    jmp LOOP
WORD:
    mov %EAX, tab(, %ECX, 4)
    
    cmpb $0, (%EBX)
    je DONE

    mov $0, %EAX #licznik
    inc %ECX
    inc %EBX
    jmp LOOP
DONE:
    push %EDI
    ret

_start: 
    mov $0, %ECX
    push $nap #tu przenosi adres 1 elemtenu 
__begin:
    call string
    nop
__end:
    nop