# !/bin/bash
#Créer une variable date_du_jour où on stock la date du jour
la_date_du_jour=$(date +'%d %B %Y')
#Afficher le message d'acceuil
echo "Bienvenu $USERNAME, nous sommes le" $la_date_du_jour
#Demander à l'utilisateur de saisir un repertoire puis on l'affiche avec la fonction echo
read -p "Quel repertoire vous intérersse aujourd'hui ? " nom_repertoire
echo $nom_repertoire

#Afficher tous les fichiers dont le nom respecte un pattern fourni en paramètre
ls $nom_repertoire/$1

# Les fichiers qui contiennent un deuxième pattern fourni en paramètre

grep -il $2 $nom_repertoire/$1

