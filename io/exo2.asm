;Compter le nombre de caractères spécifiques dans une chaine
; Récupérer une chaine de texte fournie en entrée, la stocker en mémoire puis la parcourir jusqu'à "\n" afin de compter le nombre de
; caractères qui se trouvent à l'interieur. La chaine de texte possède au maximum 256 caractères.
; NOTE : Le caractère "\n" est représenté par le nombre 10
;------------------------------------------------------------------------------------------------------------------------------

extern io_get_char

section .text
global main
main:
    ; Récupération de la chaine de texte
    call io_get_char
    mov [text], eax

    ; Parcours de la chaine de texte
    mov eax, 0
    mov ebx, 0
    mov ecx, 0
    


    xor eax, eax
    ret