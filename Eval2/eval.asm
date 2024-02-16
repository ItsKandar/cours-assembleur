; Évaluation Pratique Assembleur
; Consignes :
; Proposer un programme en langage assembleur X86 permettant de trier un tableau de données de taille inconnue.

; - A l’initialisation du programme se trouve en entrée un certain nombre de données entières positives
; o Chaque nombre de la liste d’entrée est écrit sur une ligne différente
; o Le dernier nombre de la liste d’entrée est toujours -1
; o La valeur des autres nombres de la liste varie de 0 à 1 000 000
; o Le tri ne peut pas avoir lieu s’il n’y a pas au moins 4 nombres dans la liste d’entrée

; - Faire apparaître les données en sortie après avoir appliqué un tri capitaliste :
; a) Conserver les trois premiers éléments de la liste
; b) Dans une boucle itérative :
; o Soustraire 1 à l’élément suivant et l’ajouter au 1er, 2ème et 3ème élément de la liste
; o Si l’élément arrive à 0, l’ignorer et soustraire le prochain élément
; c) Réitérer l’opération jusqu’à ce que tous les éléments qui suivent les trois premiers valent 0

; - Chacune des valeurs devra ensuite être affichée en Sortie (les valeurs nulles incluses)

; Explications :
; 3 premiere valeurs "riches", les autres "pauvres"
; On soustrait 1 à la valeur suivante et on l'ajoute à la première, deuxième et troisième valeur
; Si la valeur arrive à 0, on l'ignore et on soustrait le prochain élément
; On réitère l'opération jusqu'à ce que tous les éléments qui suivent les trois premiers valent 0
; On affiche les valeurs en sortie (les valeurs nulles incluses)

; Exemple :
; Entrée : 10, 0, 5, 2, 0, 1, -1
; -1 sur les "pauvres", +1 sur les "riches"
; 11, 1, 5, 1, 0, 1
; 12, 2, 7, 0, 0, 1
; Sortie : 13, 3, 8, 0, 0, 0

; Exemple2 :
; Entrée : 50, 2, 0, 3, 46, 1, 2 , -1
; -1 sur les "pauvres", +1 sur les "riches"
; 51, 3, 1, 3, 5, 1, 1
; 52, 4, 2, 3, 5, 1, 0
; 53, 5, 3, 3, 5, 0, 0
; 54, 6, 4, 3, 4, 0, 0
; 55, 7, 5, 3, 3, 0, 0
; 56, 8, 6, 3, 2, 0, 0
; 57, 9, 7, 3, 1, 0, 0
; 58, 10, 8, 3, 0, 0, 0
; 59, 11, 9, 2, 0, 0, 0
; 60, 12, 10, 1, 0, 0, 0
; 61, 13, 11, 0, 0, 0, 0
; Sortie : 61, 13, 11, 0, 0, 0

global main
extern printf

section .data
    numbers dw 10, 5, 5, 2, 1, 1, -1 ; Liste d'entrée, terminée par -1.
    format db "%d ", 0 ; Format pour printf

section .text

main:
    mov ebp, esp; for correct debugging
    ; Initialiser les pointeurs sur les nombres
    lea esi, [numbers] ; ESI pointe sur le début du tableau
    
    ; Vérifier la taille du tableau pour au moins 4 éléments non comptant le -1 final
    call check_size
    cmp eax, 0 ; Si moins de 4 éléments, terminer
    je terminate

    ; Appliquer le "tri capitaliste"
    call capitalist_sort

    ; Afficher les résultats
    lea esi, [numbers] ; Réinitialiser ESI au début du tableau correctement
    print_loop:
        lodsw ; Charger le mot suivant dans AX
        cmp ax, -1 ; Vérifier la fin de la liste
        je terminate
        push eax ; Sauvegarder EAX pour printf
        push format ; Pousser l'adresse du format sur la pile
        call printf ; Appeler printf
        add esp, 8 ; Nettoyer la pile (format + valeur)
        jmp print_loop

terminate:
    ret ; Retourner au système d'exploitation

check_size:
    ; Vérifier que le tableau contient au moins 4 éléments (sans compter le -1)
    mov eax, 0 ; Compteur d'éléments
    mov ecx, -1 ; Valeur de terminaison
    count_loop:
        lodsw ; Charger le mot suivant dans AX et incrémenter ESI
        cmp ax, cx ; Vérifier si c'est la fin
        je end_count
        inc eax ; Incrémenter le compteur
        jmp count_loop
    end_count:
        cmp eax, 4 ; Vérifier si au moins 4 éléments
        jb short invalid_size ; Moins de 4, retourner 0
        mov eax, 1 ; Sinon, retourner 1
        ret
    invalid_size:
        xor eax, eax ; Retourner 0
        ret

capitalist_sort:
    lea esi, [numbers + 6] ; Passer les 3 premiers éléments "riches"
    sort_loop:
        lodsw ; Charger le mot suivant dans AX
        cmp ax, -1 ; Vérifier la fin de la liste
        je sort_done
        cmp ax, 0 ; Vérifier si l'élément est déjà à 0
        jz no_redistribution
        dec ax ; Décrémenter la valeur de l'élément "pauvre"
        sub esi, 2 ; Revenir à l'élément actuel après lodsw
        mov [esi], ax ; Sauvegarder la nouvelle valeur décrémentée
        ; Répartir 1 parmi les trois premiers éléments "riches"
        add word [numbers], 1
        add word [numbers + 2], 1
        add word [numbers + 4], 1
        jmp sort_loop
    no_redistribution:
        jmp sort_loop
    sort_done:
    ret