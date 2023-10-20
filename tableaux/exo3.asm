; Écrire les instructions en assembleur correspondant aux phrases suivantes

; Additionne les valeurs stockées dans les registres A et B. Le résultat sera stocké dans le registre D
ADD AX, BX
MOV DX, AX 

; Récupérer le contenu de l’itérateur de la boucle en cours et le stocker dans le registre A
MOV AX, CX

; Récupérer l’emplacement actuel du pointeur d’instruction et lui ajouter 2
ADD IP, 2

; Récupérer l’adresse du pointeur de base et lui ajouter 4
ADD BP, 4