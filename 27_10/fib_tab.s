.globl _start
.data
# tab: .long 5, 12, 6, -4, 0, 1
tab: .long 10, 12, 14, 11, 10, 10, 10
end_tab:
.equ tab_bytes, end_tab - tab
.equ tab_size, (end_tab - tab)/4
.text
_start: 
    mov $0, %EAX
    mov $0, %EBX
    mov $0, %ECX
    mov $1, %EDX
    mov $1, %ESI
__begin:
LOOP:
    cmp $tab_size, %EBX
    jge END_LOOP    

    cmp %ESI, %EBX # >1
    jg SKIP
    mov %ESI, tab(, %EBX, 4) 

SKIP:

    cmp %ESI, %EBX # >1
    jle SKIP2

    mov %EBX, %EDI
    sub $1, %EDI
    mov %EBX, %ECX
    sub $2, %ECX

    mov $0, %EDX
    add tab(, %EDI, 4), %EDX
    add tab(, %ECX, 4), %EDX

SKIP2:


    mov %EDX, tab(, %EBX, 4) 
    mov tab(, %EBX, 4), %EAX #debug
    
    inc %EBX
    jmp LOOP
END_LOOP:
    nop
__end:
    nop