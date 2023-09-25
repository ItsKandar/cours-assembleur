; Expliquer le fonctionnement des lignes de code suivantes en une phrase

MOV AX, CX ; Copier la vaeur de CX dans AX
JMP marmotte ; Saute jusqu'au label "marmotte" sans condition
.TEXT ; Defini une section de texte qui contient le code assembleur
ADD AX, BX, 42 ; Addition de AX, BX et 42. Le résultat est stocké dans la destination : AX
marmotte: SUB AX, 00000001b ; Definition du label "marmotte" et soustraction de 0b1 à la valeur du registre AX