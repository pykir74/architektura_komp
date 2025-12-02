.globl _start
.text

podprog: 
    mov %EBX, %EAX
    
    mov $0, %EDX
    div %ECX
    
    mov %ECX, %EBX
    shr $1, %EBX # przesuniećie bitowe o 1 w prawo = dzielenie przez dwa = wyznacza threshold
                 # wtedy jeśli reszta z dzielenia (%EDX) jest większa od thresholdu 
                 # zaokrągla się wynik w górę

    cmp %EBX, %EDX
    jl SKIP
    inc %EAX
SKIP:
    ret

_start: 
    mov $9, %EAX
    mov $2, %EDX

__begin:
    mov %EAX, %EBX
    mov %EDX, %ECX
    jmp podprog
    nop
__end:
    nop