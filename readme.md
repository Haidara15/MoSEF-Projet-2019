# LINUX : MoSEF-Projet-2019  année universitaire 2019/2020

## Organisation et contexte

Ce travail est réalisé dans le cadre du projet individuel de linux. il a pour object d'évaluer la connaissance et la compréhension des concepts de base de ce langage. Pour réaliser ce projet, considérons deux grandes parties

### Partie I:

Dans un premier temps, nous avons crées le script **search-fichiers.sh** pour qu'il effectue les tâches suivantes: 
- Annonce le moment de sont exécution. 
- Souhaite la bienvenue à l'utilisateur qui l'a tapé et lui demande de taper le chemin d'un répertoire et l'affiche. 
pour cela, nous avons utilisés le code suivant : 
``` 
la_date_du_jour=$(date +'%d %B %Y') 
echo "Bienvenu $USERNAME, nous sommes le" $la_date_du_jour
read -p "Quel repertoire vous intérersse aujourd'hui ? " nom_repertoire
echo $nom_repertoir

``` 
Pour l'éxécution, on entre la commande : ` bash search_fichiers.sh ` puis on saisit le nom du repertoire souhaité.

Ensuite, nous avons utilisé la fonction **commit** pour commiter le fichier dans le dépôt local avant de pousser les modifications dans le dépôt distant via la fonction **git push -u master**.

### Partie II:

Dans cette seconde partie, il était question d'éditer un script pour qu'il affiche tous les fichiers dont le nom respecte un pattern fourni en paramètre pour cela nous avons crées une nouvelle branche **cherif** sur laquelle on s'est placé pour ajouter au script précédent la ligne suivante: `ls $nom_repertoire/$1` . Pour exécuter le fichier, je me suis placé dans le repertoire **bin**, j'ai sasit la commande: **/bin/*.exe**, elle m'a retournée tous les fichiers avec une extension **.exe** se trouvant dans ce répertoirie. Pour aller plus loin et rendre la recherche plus précise, nous avons ajouté au script précédent une autre condition (` grep -il $2 $nom_repertoire/$1 `). Cette condition permet d'afficher uniquement les fichiers qui contiennent un deuxième pattern fourini en paramètre. la fonction **grep** va permettre de trier les fichiers du repertoire par rapport à ce qu'ils contiennent et **i** permet de rendre le pattern insensible à la casse (qu'il soit en majuscule ou en minuscule, il retourne le fichier qui le contient). Ainsi en entrant la commande `/bin/*.exe H*` il m'a retourné tous les fichiers d'extension *.exe* contenant des mots commençant par H.

Une fois ce travail terminé nous avons poussés les changement dans le dépôt distant avant de supprimer le fichier **Consignes.md** grâce à la commande `rm Consignes.md`. 

