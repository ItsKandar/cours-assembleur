;Trouver une valeur non présente dans un tableau
; Réaliser un programme qui permet de choisir une valeur qui n’est pas présente dans un tableau contenant des données en 32-bits et
; composé de nombres entiers positifs ou nuls. La taille initiale du tableau est de 6 valeurs. La valeur ainsi déduite sera stockée dans le 
; registre B.
;------------------------------------------------------------------------------------------------------------------------------

section .data
    tableau DD 0,1,11,3,4,5,6,7,8,9 ; Tableau de 10 valeurs
    
section .text
global main
main:
    mov ebp, esp; for correct debugging
    xor eax, eax
    mov ebp, tableau ; Pointeur tableau
    mov bx, [ebp] ; Taille du tableau
    
    boucle:
        inc eax ; Incrémentation du compteur
        mov ecx, 10 ; Taille du tableau
    intableau:
        cmp eax, [ebp + 4 * ecx] ; Pointeur tableau + 4 * taille du tableau
        je boucle ; Si la valeur est présente dans le tableau, on retourne à boucle
        loop intableau ; Sinon on continue la boucle
    
    mov ebx, eax
    ret