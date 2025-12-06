.globl _start

.data
tab: .long 12, 2, 4, 6, 100, 1, 1, 1, 1
end_tab:
.equ tab_bytes, end_tab - tab
.equ tab_size, (end_tab - tab)/4
.text



fib: 
    mov $2, %ESI # i = 0

    mov %EAX, (%EBX)
    add $4, %EBX #1
    mov %EAX, (%EBX)
    add $4, %EBX #1

LOOP:
    cmp %ECX, %ESI #2....n
    je DONE
    push %EAX
    add %EDX, %EAX #D = 1, A = 2
    pop %EDX
    mov %EAX, (%EBX)

    add $4, %EBX #dodaj 4 bajty (32 bity) do adresu
    inc %ESI
    jmp LOOP
DONE:
    ret

_start: 
    mov $1, %EAX
    mov $1, %EDX
    mov $tab, %EBX #tu przenosi adres 1 elemtenu 
    mov $tab_size, %ECX #tu przenosi STAŁĄ do ECX
__begin:
    call fib
    nop
__end:
    nop