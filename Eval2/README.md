# Évaluation Pratique Assembleur => Consignes et Barème
Durée : 3h

## Consignes :
Proposer un programme en langage assembleur X86 permettant de trier un tableau de données de taille
inconnue.

- A l’initialisation du programme se trouve en entrée un certain nombre de données entières positives
o Chaque nombre de la liste d’entrée est écrit sur une ligne différente
o Le dernier nombre de la liste d’entrée est toujours -1
o La valeur des autres nombres de la liste varie de 0 à 1 000 000
o Le tri ne peut pas avoir lieu s’il n’y a pas au moins 4 nombres dans la liste d’entrée

- Faire apparaître les données en sortie après avoir appliqué un tri capitaliste :
a) Conserver les trois premiers éléments de la liste
b) Dans une boucle itérative :
o Soustraire 1 à l’élément suivant et l’ajouter au 1er, 2ème et 3ème élément de la liste
o Si l’élément arrive à 0, l’ignorer et soustraire le prochain élément
c) Réitérer l’opération jusqu’à ce que tous les éléments qui suivent les trois premiers valent 0

- Chacune des valeurs devra ensuite être affichée en Sortie (les valeurs nulles incluses)

- L’assembleur à utiliser pour réaliser ce programme est le Netwide Assembleur (NASM) et le programme devra être assemblable et exécutable via le logiciel SimpleASM (SASM)

Rendu du travail :
Le travail devra être rendu sous l’un des formats suivants : (aucun autre format de fichier ne sera accepté)
- .asm
- .txt
- .zip
- .rar

## Barème Points
=== DÉCOUPE DU PROGRAMME (2 points) ===
Toutes les parties du programme sont placées correctement et dans le bon ordre 2 points
Une partie est absente ou au mauvais endroit 1 point
La découpe est absente ou n’est pas satisfaisante 0 point
=== OPTIMISATION (2 points) ===
Le programme est optimisé parfaitement pour qu’il s’exécute en un minimum d’étapes et de
temps processeur tout en possédant un algorithme efficace
2 points
Un travail d’optimisation est visible et l’algorithme est convenable, bien que tout ne soit pas
parfait et puisse être amélioré
1 point
Le programme manque d’optimisations élémentaires ou utilise un algorithme de mauvaise
qualité
0 point
=== BONNES PRATIQUES (2 points) ===
Le code est indenté correctement, chaque registre est utilisé conformément à son usage prévu 2 points
Le code est indenté correctement, mais 1 registre n’est pas utilisé correctement 1 point
Le code est mal indenté ou plusieurs registres ne sont pas utilisé convenablement 0 point
=== COMMENTAIRES (4 points) ===
Un docstring initial est présent ainsi qu’un commentaire pour expliquer chacune des lignes du
programme
4 points
Il manque soit un élément important du docstring initial, soit un commentaire essentiel du
programme
3 points
Le docstring initial est manquant, mais les lignes essentielles du programme sont commentées 2 points
Certains éléments du docstring initial ou des commentaires existent, mais ils sont globalement
absents du programme
1 point
Ni le docstring initial, ni les commentaires ne sont satisfaisants et ne permettent pas de
comprendre comment fonctionne le programme
0 point
=== CONSIGNES (3 points) ===
Toutes les consignes ont été respectées 3 points
1 consigne n’a pas été respectée 1,5 point
Seulement une partie des consignes a été respectée 0 point
=== RÉSULTAT FINAL (7 points) ===
Le programme fonctionne toujours correctement quel que soit le jeu de données 7 points
Le programme fonctionne avec la plupart des jeux de données, mais il y a au moins une
exception
5 points
Le programme donne le bon résultat sur au moins un jeu de données 2 points
Le programme s’exécute sans échec sur au moins un jeu de données 1 point
Le programme ne (compile pas / ne s’exécute pas / ne s’assemble pas) sans échec 0 point
NOTE FINALE sur 20 points