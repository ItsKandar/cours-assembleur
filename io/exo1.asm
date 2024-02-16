;Parcours de données
; Réaliser un script assembleur qui récupère un nombre en entrée, qui le divise par 2 et qui renvoi le modulo en sortie
;------------------------------------------------------------------------------------------------------------------------------

extern io_get_dec, io_print_dec

section .text
global main
main:
    mov ebp, esp; for correct debugging
    mov ebx, 2
    call io_get_dec
    cdq
    idiv ebx
    mov eax, edx
    call io_print_dec
    
    xor eax, eax
    ret