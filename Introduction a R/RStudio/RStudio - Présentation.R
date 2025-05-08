
# Introduction -----------------------------------------------------------------------------

## Ouverture de RStudio ####


## Quatre fenêtres ####

### Script R - Haut gauche ####
# Cliquer sur Run en haut à droite du script ou CTRL+ENTER
5 + 5
# Une ligne de commentaire commence par le caractère carré [#]

### Console - Bas gauche ####
# On y voit le résultat de notre calcul précédent qui était 5+5

### Environnement et autres - Haut droit ####

#### Environnement ####
# Endroit où l'on peut voir la ou les valeurs d'un objet ou d'une variable.
x <- 5 + 5
# 1) le code s'afficher dans la console
# 2) x prend la valeur de 5+5=10
tableau <- mtcars

#### History ####
# Historique du code exécuté

#### Connections ####
# Connexion sur une base de données. Dans notre cas ce sera à Teradata.

#### Tutorial ####
# Différentes formations de R.


### Fichiers et autres - Bas droit ####

#### Fichiers - Files ####
# Explorateur de fichiers
# Créer un nouveau dossier, créer un nouveau fichier, supprimer et renommer un fichier.
# More > Concept de working directory
#     Set as working directory
#     Go to working directory

#### Graphiques - Plots ####
# Endroit où on peut visualiser les graphiques créés.
plot(mtcars$mpg, mtcars$wt)

#### Librairies - Packages ####
# Liste des librairies installées.
#     User Library : installé par l'utilisateur
#     System Library : installé par défaut
# Installer une librairie :
install.packages("dplyr")
# Activer une librairie :
library(dplyr)
# Sélectionner une librairie nous amènera à la section Aide - Help

#### Aide - Help ####
# Documentation sur R, RStudio, les librairies...
# Refererences > Packages
#   Liste des librairies installées
#   Accès aux fonctions de la librairie
#     Documentation de la fonction
#       Description
#       Usage
#       Arguments
#       Détails supplémentaires
#       Valeur retournée
#       Exemples
#       ...

#### Visionneur - Viewer ####
# Visualiser des applications web ou autre.

#### Presentation ####
# Même principe que Viewer.



## Barre de menu ####

### Tools ####
# Installation d'une librairie
# Vérifier les mises à jour disponibles
# Background jobs
# Addins
# Global Options
