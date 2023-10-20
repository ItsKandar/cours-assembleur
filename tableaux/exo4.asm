;Utilisation spécifique d’un tableau préalablement constitué
; Réaliser un programme qui permet de soustraire à une valeur de base les éléments qui se trouvent dans un tableau de type WORD et 
; composé de 5 nombres entiers positifs. La valeur de base est la première valeur qui est présente dans le tableau. Le résultat final devra 
; être stocké dans le registre BX.
;------------------------------------------------------------------------------------------------------------------------------

section .data
    tableau DW 100, 1, 2, 3, 4

section .text
    global main

main:
    mov ebp, esp; for correct debugging
    xor ebx, ebx ; initialisation du registre BX à 0
    mov ecx, 5 ; nombre d'éléments dans le tableau
    mov ebp, tableau ; pointeur sur le tableau
    mov bx, [ebp] ; valeur de base

    boucle:
        add ebp, 2 ; incrémentation du pointeur
        sub bx, [ebp] ; soustraction de la valeur de base avec la valeur du tableau
        loop boucle ; boucle jusqu'à ce que ECX = 0

xor eax, eax
ret