
# R vs RStudio ? ------------------------------------------------------------------------------
# R est le moteur alors que RStudio est la carrosserie de la voiture.
# On pourrait remplacer RStudio par VSCode ou Positron, mais R n'est pas remplaçable.
# Je préfère

# Ouverture de RStudio ------------------------------------------------------------------------

# Quatre volets par défaut :
# 1) Volet Source (en haut à gauche) :
#     Les fichiers à modifier s'ouvrent à cet endroit. On peut :
#     - écrire du code;
#     - modifier du code;
#     - sauvegarder vos scripts (.R);
#     - exécuter une ou plusieurs lignes.
# 2) Volet Console (en bas à gauche)
#     C'est l'endroit où R exécute les commandes. Le code exécuté y est affiché ainsi que le
#     résultat. "2 + 3" affiche "[1] 5".
# Pour exécuter :
# - Run en haut à droite du volet
# - CTRL + ENTER
2 + 3
#     La console est comme une calculatrice qui permet de :
#     - exécuter du code rapidement
#     - voir les résultats
#     - lire les messages d'erreur
#     - ...
# 3) Volet Environnement (en haut à droite)
#     Il affiche les objets que vous avez créés. C'est l'inventaire de votre espace de travail.
prenom <- c("Alain", "Alex")
nom <- c("Térieur")
age <- c(45, 54)
df <- data.frame(
  NOM = paste(prenom, nom),
  AGE = age
)
#     On peut ainsi voir :
#     - quelles variables existent;
#     - leur structure (type et taille).
#     D'autres onglets sont disponibles ou pourraient être disponibles :
#     - History : Historique du code exécuté. Un double clic retourne le code dans la console.
#     - Connections : Permet de se connecter à des bases de données SQL, Excel, Spark...
#     - Build : Création de packages R.
#     - Tutorial : Formation de base disponible directement dans RStudio.
# 4) Volet Files / Plots / Packages / Help (en bas à droite)
#     Files : Permet de naviguer dans les dossiers et les fichiers.
#     Plots : Affiche les graphiques.
hist(rnorm(100))
#     Packages : Montre les packages installés et chargés (crochet à gauche).
#       Contient toute la documentation nécessaire à l'utilisation des fonctions et des tables.
#     Help : Affiche l'aide de R
?mean
#     Viewer : Afficher du contenu HTML produit par R. C'est une mini page Web.
library(DT)
datatable(iris)
#     Presentation : Sert à afficher des présentation créées avec R Markdown (ioslides, Slidy, ...)




# File ----------------------------------------------------------------------------------------

## Import Dataset... ####
# Aide à l'importation d'un fichier



# Code ----------------------------------------------------------------------------------------

## Insert Section ####
# Ajoute une section qui se retrouve dans le menu de navigation (icone en haut à droite du volet).
# Une section est créée de la manière suivante :
# 1) Niveau de la section : # Titre 1; ## Titre 2; ### Titre 3...
# 2) Se termine par AU MOINS quatre traits (-), égals (=) ou carrés (#)
# Titre 1 ----
## Titre 2 ====
### Titre 3 ####
#### Titre 4 ====

## Commenter un bloc de code ####
# CTRL + MAJ + C
df <- data.frame(
  NOM = paste(prenom, nom),
  AGE = age
)

## Source ####
# Exécuter un script au complet



# Session -------------------------------------------------------------------------------------

## New Session ####
# Ouvre un N-ième RStudio

## Restart R ####
# Redémarre R

## Set working directory ####
# Définir l'environnement de travail.
# Pour importer plusieurs fichiers dans le même répertoire :
util_org_1 <- read.csv("C:/Users/bougui01/Desktop/Mes Outils/Rinspq/inst/data-source/util_org_1.csv")
util_org_2 <- read.csv("C:/Users/bougui01/Desktop/Mes Outils/Rinspq/inst/data-source/util_org_2.csv")
util_org_3 <- read.csv("C:/Users/bougui01/Desktop/Mes Outils/Rinspq/inst/data-source/util_org_3.csv")
util_org_4 <- read.csv("C:/Users/bougui01/Desktop/Mes Outils/Rinspq/inst/data-source/util_org_4.csv")
util_org_5 <- read.csv("C:/Users/bougui01/Desktop/Mes Outils/Rinspq/inst/data-source/util_org_5.csv")
# En définissant l'environnement de travail, on évite de répéter le répertoire :
setwd("C:/Users/bougui01/Desktop/Mes Outils/Rinspq/inst/data-source")
util_org_1 <- read.csv("util_org_1.csv")
util_org_2 <- read.csv("util_org_2.csv")
util_org_3 <- read.csv("util_org_3.csv")
util_org_4 <- read.csv("util_org_4.csv")
util_org_5 <- read.csv("util_org_5.csv")



# Tools ---------------------------------------------------------------------------------------

## Install packages ####
# Installer des packages sans utiliser la fonction install.packages()

## Check for Packages Updates ####
# Vérifier s'il y a une mise à jour d'un package et le mettre à jour au besoin.

## Background Jobs > Start Background Jobs... ####
# Permet d'exécuter un script en arrière-plan sans bloquer la session active. Reviens à ouvrir deux
# fois RStudio.

## Global Options ####

### General ####
# Version de R
# Working Directory par défaut
# Save workspace to .RData on exit: Never (IMPORTANT !!!)
# Always save history : décocher (IMPORTANT !!!)

### Code ####
#### Editing ####
# Paramètres généraux lorsqu'on code comme l'auto indentation du code quand on colle ou continuer
# en tant que commentaire lorsqu'on fait ENTRÉE si la ligne précédente était du commentaire.

#### Display ####
# Afficher une marge à droite
# Sorf-wrap : Le code change de ligne au lieu de continuer en largeur.
# ...

#### Saving ####
# Default text encoding : Je suggère UTF-8, mais à voir avec vos collègues. Vraiment tannant quand
# on ne travaille pas avec le même encodage que ses collègues.

#### Completion ####
# Completion Delay : Nombre de caractères à écrire et temps en millisecondes avant que R propose
# du code


# Appearance ----------------------------------------------------------------------------------

# Taille du code
# Thème de RStudio


# Pane layout ---------------------------------------------------------------------------------

# Décider la position des volets
