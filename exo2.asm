; Expliquer le fonctionnement des lignes de code suivantes en une phrase

MOV AX, CX ; AX prend la valeur de CX
JMP marmotte ; Saute à l'adresse marmotte
.CODE ; Début du code
ADD AX, BX, 42 ; AX prend la valeur de AX + BX + 42
marmotte: SUB AX, 00000001b ; AX prend la valeur de AX - 1