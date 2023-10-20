;Ajouter une valeur à un tableau
; Réaliser un programme qui permet d’ajouter dans un tableau de type DWORD la valeur 0 à la fin des données déjà présente dans celui-ci. 
; La taille initiale du tableau est inconnue mais est calculé dans une constante.
;------------------------------------------------------------------------------------------------------------------------------

section .data
    tableau DD 1,-2,3,-4,5,-6,-7,-8 ; Tableau de valeurs
    tableau_s equ $ - tableau ; Taille en octets du tableau (DWORD = 4 octets par valeur)

section .text
global main
main:
    mov ebp, esp; for correct debugging
    mov DWORD [tableau + tableau_s], 0 ; Emplacement mémoire tableau + taille tableau
    ret