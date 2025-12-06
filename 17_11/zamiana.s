.globl _start

.data
    jeden: .word 11     
    dwa: .word 22    

.text

swap:
    #movw = move word czyli przenieś 16bitów(2 bajty)
    movw (%ESI), %AX    #ax = 16bit, eax = 32bity
    movw (%EDI), %DX    
    
    movw %DX, (%ESI)    
    movw %AX, (%EDI)    
    ret

_start:
    mov $jeden, %ESI     
    mov $dwa, %EDI     

__begin:
    # Wywołanie procedury
    call swap
__end:
    nop