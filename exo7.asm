;Fusionner deux tableaux
; Réaliser un programme qui possède deux tableaux et qui contiennent chacun au maximum 10 valeurs positives en 8-bits. La taille initiale des 
; tableaux est inconnue, mais peut être calculé dans des constantes. Le programme doit créer un tableau qui sera composé des valeurs présentes 
; dans les deux premiers tableaux.
;------------------------------------------------------------------------------------------------------------------------------

section .data
    tableau1 DB 1,2,3,4,5,6,7,8,9,10 ; Tableau 1
    tableau1_s equ $ - tableau1 ; Taille tableau1, 1octet par valeur
    tableau2 DB 11,12,13,14,15 ; Tableau 2
    tableau2_s equ $ - tableau2 ; Taille tableau2, 1octet par valeur
  
section .bss
    tableau3: resb 20 ; Tableau 3, taille max des deux tableaux
        
section .text
global main
main:
    mov ebp, esp; for correct debugging
    xor eax, eax
    xor ebx, ebx ; Compteur
    mov ecx, tableau1_s + tableau2_s ; Compteur = taille des deux tableaux
    boucle:
        mov bl, [tableau1 + eax] ; On copie le contenu de tableau1 dans tableau3
        mov [tableau3 + eax], bl ; On copie le contenu de tableau2 dans tableau3
        inc eax ; On incrémente le compteur
        loop boucle
    

    ret