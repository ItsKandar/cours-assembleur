;Parcours de données
; Réaliser un script assembleur qui récupère un nombre en entrée, qui le divise par 2 et qui renvoi le modulo en sortie
;------------------------------------------------------------------------------------------------------------------------------

extern io_get_dec
section .text
global main
main:
    mov ebp, esp; for correct debugging