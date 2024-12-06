# 65-6c-6f-70-68-65

Avant tout, merci de l'attention que vous prêtez a ce code non qualitatif, rédiger du code de merde pour la vanne est une des activités favorites de ce groupe


▓█████  ██▓███   ██▓ ██▀███   ▄▄▄     ▄▄▄█████▓▓█████   ██████ 
▓█   ▀ ▓██░  ██▒▓██▒▓██ ▒ ██▒▒████▄   ▓  ██▒ ▓▒▓█   ▀ ▒██    ▒ 
▒███   ▓██░ ██▓▒▒██▒▓██ ░▄█ ▒▒██  ▀█▄ ▒ ▓██░ ▒░▒███   ░ ▓██▄   
▒▓█  ▄ ▒██▄█▓▒ ▒░██░▒██▀▀█▄  ░██▄▄▄▄██░ ▓██▓ ░ ▒▓█  ▄   ▒   ██▒
░▒████▒▒██▒ ░  ░░██░░██▓ ▒██▒ ▓█   ▓██▒ ▒██▒ ░ ░▒████▒▒██████▒▒
░░ ▒░ ░▒▓▒░ ░  ░░▓  ░ ▒▓ ░▒▓░ ▒▒   ▓▒█░ ▒ ░░   ░░ ▒░ ░▒ ▒▓▒ ▒ ░
 ░ ░  ░░▒ ░      ▒ ░  ░▒ ░ ▒░  ▒   ▒▒ ░   ░     ░ ░  ░░ ░▒  ░ ░
   ░   ░░        ▒ ░  ░░   ░   ░   ▒    ░         ░   ░  ░  ░  
   ░  ░          ░     ░           ░  ░           ░  ░      ░  
                                                               

- PREREQUIS -
De quoi compiler et lancer du c
Python (toutes versions)
OCAML (toutes version) https://ocaml.org/docs/installing-ocaml
--------------

Le cahier des charges de ce worst code ever est:
- Le code doit être aussi mauvais que possible
- Interprété au moins 4 languages différents
- Le moins lisible et debuggable possible

Si jamais ce code est compréhensible en moins de 2 dolipranes 1000, alors nous n'avons pas réussi notre mission

Stage0 : Le debut de la fin
    Non-choix techniques :
- Le directory possed un Makefile avec des noms de variables trop longs rendant la lecture du code inutile, appelant chaque commande avec des variable, meme pour des petits flags comme "-o".
- Il servira alors a lancer le code.c (stage1) puis supprimera les fichiers cree par la suite.

Stage1 : C, le langage optimal pour ecrire du python :)
    Non choix techniques:
- Le code C étant un programme obfusqué permettant de créer un second code C qui lui servira a écrire un code python dans une nouvelle file.
- Il lancera ensuite le fichier python avant de supprimer les fichiers créés jusqu'a présent.
- Le code C n'est pas fait pour etre lisible, utilisant des variables aux noms exotiques et du typage non-commun.
- Ce code C n'écrira pas le fichier en une fois, mais lors de la création du second code C, créera des suites d'instruction du type : open file; écrire caractere; close file;
- Donnant ainsi un nouveau code C avec cette suite d'instruction, écrivant caractere par caractere le code python en ouvrant et fermant chaque fichier a chaque fois. Sachant que chaque instruction fut deja donnée et écrite par le fichier code C parent.
- On possede alors un fichier parent code C, donnant le fichier enfant code C, utilisant un algorithme surcompliqué pour ecrire lentement un fichier python, qui est le stage 2.

Stage2: Python, un interprèteur divin d'OCaml
    Non-Choix techniques:
- L'entièreté des instructions sont définies en début de programme par des tirets du bas, toutes le fonctions doivent être anonymes
- On a hashé le le fichier ocaml en md5 puis mis une wordlist, dont son propre contenu, il compare chaque hash jusq'à tomber sur son propre contenu
- Ensuite on compresse l'entièreté du programme avec zlib, on donne la décompression que l'on passe dans un exec

Stage3: Le code ocaml écrit alors un fichier "wankel" et son interpreteur
    Non-Choix techniques:
- Boah on a pas eu grand chose à faire ocaml se suffit à lui même

Stage4 : Notre propre language basé sur le brainfuck, le "wankel" (on aime tous les moteurs rotatifs), retourne le string tant attendu : "Hello, World!"
    Non-Choix techniques:
- Le tableau est 15 fois plus qu'en brainfuck parce que la ram c'est délicieux :3
- Le code est écrit de manière explicites


On vous as laissé des commentaires croustillant si jamais vous avez assez de temps à perdre pour regarder chaque fichier après l'execution

