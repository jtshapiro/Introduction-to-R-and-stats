#' INTRODUCTION AUX R ET MÉTHODES STATISTIQUES EN BIOLOGIE
#' POUR: Licence Professionnel:
#' Biochimie, biologie moléculaire et cellulaire pour le diagnostic in 
#' vitro et les biothérapies (LPRO2019)
#' à l'Université Claude Bernard Lyon 1, novembre 2019
#' 
#' (c) Julie Teresa Shapiro, Jean-Philippe Rasigade
#' Université Claude Bernard Lyon 1
#' CIRI Inserm U1111
#' 
#' MIT LICENSE
#' 

#############################################################################
##########              1. INTRODUCTION DE R         ########################
#############################################################################

# Nous commençons avec une introduction au logiciel R
# 1. Set working directory 
# 2. Ouvrir un script existant
# 3. Commencer un nouveau script
# 4. Console
# 5. Environnement
# 6. Commencer un << Project >>
# 7. Files, Plots, Packages, Help, Projet
# 8. Ajuster le tailles de fenêtres


# Écrivez les scripts dans ce fichier. 
# Pour écrire des commentaires, notes, etc. (que n'est sont pas des commandes)
# commencez le ligne avec le symbole << # >>
# Le commandes peuvent s'écrire soit dans le fichier script soit directement dans 
# la console ci-dessous.
# Pour tourner une commande, metez le curseur sur la ligne avec la commande et 
# cliquez << Control >> et << Entrer >> ensemble

# Faire une calcul simple:
# Addition:
1+3

# Nous pouvons mettre le calcul directement dans la console. 

# Nous pouvons stocker des valeurs / données dans une variable avec  <<  <-  >>
x <- 2
x

# NOTE: Si nous utilisons le meme nom de variable pour une nouvelle opération,
# le valeur va être reemplacée.
x <- 5
x

# Une variable peut contenir le résultat d'un calcul:
# Addition
x <- 1 + 3
x

# Soustraction
x <- 1 - 3
x

# Multiplication
x <- 3*3
x

# Division
x <- 3/3
x

# Exponentiel:
x <- 2^3
x

# Les FONCTIONS sont des raccourcis qui implementent un calcul
# Pour calculer la racine carrée (square root), nous utilisons une fonction << sqrt >>:
x <- sqrt(4)
x

# Pour avoir plus d'informations sur une fonction, utilisez << ? >>
?sqrt

# Nous pouvons faire des calculs plus complex avec plusieurs étapes
x <- (4 + 3)/2*6
x

x <- 4 + 3/2*6
x

x <- sqrt(4)/3
x

#############################################################################
##########              2. DESCRIPTION DES DONNÉES   ########################
#############################################################################

# Description des données
# Créer une list des nombres
x <- c(1, 9, 3, 4, 7, 11, 9, 9, 8, 7, 2, 4)
x

# Nous commençons avec une VISUALISATION des données:
# Barplot
barplot(x)

# Histogramme: 
hist(x)

# Boxplot
boxplot(x)

# Nuage des points:
plot(x)
stripchart(x)

# L'Index est l'ordre des nombres dans le vector
x <- c(4, 7, 11, 9, 9, 8, 7, 2, 4,1, 9, 3)
x

# Nuage des points:
plot(x)
stripchart(x)

# Statistiques descriptives:
# Moyenne:
mean(x)

# Médian:
median(x)

# Écart-type
sd(x)

# Variance
var(x)

# Autres informations utiles sur les donnés:
# Minimum:
min(x)

# Maximum: 
max(x)

# Intervalle:
range(x)

# Résumé des donnés:
summary(x)


#############################################################################
##########          3. OUTLIERS (DONNÉES ABERRANTS)    ######################
#############################################################################

# Outliers (donnés aberrant)
x <- c(1, 9, 3, 4, 7, 11, 9, 9, 8, 7, 2, 4)
x

# VISUALISER les données: 
# Histogramme: 
hist(x)

# Boxplot
boxplot(x)

# Pour idéntifier les outliers, rappelez: le Z-score
# Formule: Z-score = (x – moyenne) / SD
# Unité = nombre d’écarts-type de déviation
# |Z| > 2: probabilité < 5% (outlier suspect)
# |Z| > 3: probabilité < 3‰ (outlier très suspect)

# Testez la valeur plus grand / plus petit
z.petit <- (1 - mean(x)) / sd(x)
z.petit

z.grand <- (11 - mean(x)) / sd(x)
z.grand

#Est-que il y a une fonction pour trouver les valeur minimale / maximale?

min(x)
z.petit <- (min(x) - mean(x)) / sd(x)
z.petit

max(x)
z.grand <- (max(x) - mean(x)) / sd(x)
z.grand

# Example 2:
n <- c(5, 8, 4, 6,2, 3, 8, 10, 6, 3, 10, 19, 5, 12, 5, 10, 4, 9, 9, 5, 10)

# VISUALISEZ les donnés:
# Histogramme:


# Boxplot: 


# Moyenne:


# Médian:


# Écart type (Standard Deviation)


# Calculez le Z-score
# |Z| > 2: probabilité < 5% (outlier suspect)
# |Z| > 3: probabilité < 3‰ (outlier très suspect)
z.n <- (max(n) - mean(n)) / sd(n)
z.n


# Que c'est que passe si nous enlevons l'outlier:
n2 <- c(5, 8, 4, 6,2, 3, 8, 10, 6, 3, 10, 5, 12, 5, 10, 4, 9, 9, 5, 10)

# VISUALISEZ les donnés:
# Histogramme:


# Boxplot: 


# Effet d'outlier sur la moyenne et médian:
# Moyenne: 


# Médian: 


# Comparez avec << n >>
# Moyenne, n:


# Médian, n:


# Example 3: Outlier dans les petits echantillons
n.p <- c(6.4, 2.1, 7.4, 8.3, 7.5, 6.2)

# VISUALISEZ les donnés:
# Histogramme:


# Boxplot: 

# Où est l'outlier?

# Statistiques descriptives:
# Moyenne:


# Médian:


# Écart type (Standard Deviation)


# Calculez le Z-score


# Pourquoi |Z| < 2 ?

# Effet sur la moyenne et median:
# Enlever l'outlier:
n.p2 <- c(6.4, 7.4, 8.3, 7.5, 6.2)

# VISUALISEZ les donnés:
# Histogramme:


# Boxplot: 


# Statistiques descriptives:
# Moyenne:


# Médian:


# Comparez avec les donnés avec l'outlier:
# Moyenne, n.p:

# Médian, n.p:


#############################################################################
##########          4. NORMALITÉ DES DONNÉES           ######################
#############################################################################

# Importer une fichier csv
d1 <- read.csv("d1.csv", header = TRUE, sep=",")
?read.csv

# Importer une fichier csv
d2 <- read.csv("d2.csv", header = TRUE, sep=",")

# Regardez les donnés:
d1

# Alternative (pour les grands tableaux): regarder les donnés avec le fonction << View >>
View(d1)
View(d2)
# Une tableau avec 1 colonne et 1000 lignes

# Avec une dataframe ou tableau, il faut sélectionner 
# une colonne specifique pour faire des operations / calcule. 
# Sélectionnez la colonne avec << $ >> :
x1 <- d1$x
x2 <- d2$x

# VISUALISEZ les données:
#Histogramme:
hist(x1)

# Comparez avec d2:
# Histogramme: 


# Visualisez une courbe de densité (utile quand il y a beaucoup des données).
plot(density(x1))
plot(density(x2))

# Statistiques descriptives:
# Moyenne, x1:

# Médian, x1:


# Moyenne, x2:


# Médian, x2:


# Shapiro-Wilks Test: Test statistique pour la normalité:
# d1
# Directement:
shapiro.test(x1)

# Stocker le resultat du test dans un variable:
shap.d1 <- shapiro.test(x1)
shap.d1$
  
# d2
shap.d2 <- shapiro.test(x2)

# Si les donnés sont normale nous pouvons calculer le  
# 95% Confidence Interval (Intervalle de Confiance):
# avec cette formule : moyenne + / - 1.96*SD
set.lower <- mean() - 1.96*sd(x)
set.upper <- mean() + 1.96*sd(x)

# Normalité avec les petits echantillons:
# Nos donnés 'x':
x <- c(1, 9, 3, 4, 7, 11, 9, 9, 8, 7, 2, 4)
x

# VISUALISEZ les données:
# Histogramme:

# Plot de densité:
plot(density(x))

# Test de Shapiro-Wilks pour normalité:



# Si les donnés sont normale nous pouvons calculer le  
# 95% Confidence Interval (Intervalle de Confiance):
# avec cette formule : moyenne + / - 1.96*SD

# Lower interval: 


# Upper interval: 


#############################################################################
##########          5. ANALYSER LES DONNÉS             ######################
#############################################################################

# Importer une fichier csv
setosa <- read.csv('setosa1.csv', header=TRUE, sep=",")

# Régardez les donnés:
View(setosa)

# Sélectionner une colonne specifique avec << $ >> :
# Sélectionner 'Sepal.Length' 
setosa$Sepal.Length

# Créer une nouveau variable pour Sepal.Length
sep.len1 <- setosa$Sepal.Length
sep.len1

# VISUALISEZ les données:

# Histogramme: 


# Comparer au 'barplot'
barplot(sep.len1)

# Boxplot


# Nuage des points:
plot(sep.len1)
stripchart(sep.len1)

# Est-que il y a un outlier?

# Statistiques descriptives:
# Moyenne:


# Médian:


# Écart-type


# Variance


# Résumé des donnés:


# Idéntifiez les outliers avec le Z-score


# L'effet d'outlier:
# Enlever l'outlier:
sep.len2 <- sep.len1[(-25)]

# Visualisation des donnés sans l'outlier:
# Histogramme: 


# Boxplot: 


# Nuage de points (stripchart): 


# Statistiques descriptives: 
# Moyenne: 


#Médian: 


# Comparez aux moyenne et médian avec l'outlier:
# Moyenne, sep.len1:


# Médian, sep.len1: 


# L'effet d'un outlier depend du nombres des echantillons

# QUESTION: Pourquoi un outlier a plus d'effet sur un petit echantillon?

# Regardez l'effet d'une outlier avec moins d'echantillons
setosa.sm <- read.csv("setosa.small.csv",header=TRUE, sep=",")

# Sélectionnez Sepal.Length et stockez dans une variable 'sep.len3'
sep.len3

# VISUALISEZ les données :
# Histogramme: 


# Boxplot: 


# Nuage des points:


# Statistiques descriptives:
# Moyenne


# Médian



# Enlever l'outlier
sep.len4 <- sep.len3[(-5)]

# VISUALISEZ les données sans l'outlier:
# Histogramme: 


# Boxplot:


# Nuage des points:


# Recalculez le moyenne et médian sans l'outlier
# Moyenne


# Médian


# Comparez aux moyenne et médian des données avec l'outlier (sep.len3):



#############################################################################
##########        6. COMPAREZ DEUX GROUPES DES DONNÉES      #################
#############################################################################

# Student T - test

# Importez les donnés
# Setosa:
setosa.full <- read.csv("setosa.csv",header = TRUE, sep=",")

# Virginica
virginica.full <- read.csv("virginica.csv",header=TRUE,sep=",")

# Sélectionnez le colonne "Sepal.Length" pour setosa et virginica
# Pour setosa: 
sep.setosa 

# Pour virginica: 
sep.virginica 

# VISUALISEZ les données pour setosa et virginica:
# Histogramme: 
# Setosa:


# Virginica:


# Boxplot, setosa et virginica:


# Statistiques descriptives pour setosa et virginica:
# Moyenne:


# Comparez la moyenne pour setosa et virginica


# Médian


# Comparez la median pour setosa et virginica

# Standard Deviation (Écart-type)


# Comparez la écart-type / standard deviation pour setosa et virginica


# Variance


# QUESTION: Que c'est que nous devons régarder / confirmer avant faire
# le test Student? 

# Regardez si...


# Si les donnés sont normaux nous pouvons calculer le 95% Confidence Interval 
# (Intervalle de Confiance) avec 
# cette formule : moyenne + / - 1.96*SD

# Setosa:
set.lower <- mean(sep.setosa) - 1.96*sd(x)
set.upper <- mean(sep.setosa) + 1.96*sd(x)

# Virginica:


# Comparez les moyennes entre setosa et virginica avec le test Student
stu.test <- t.test(sep.setosa, sep.virginica)
stu.test

# Exercises:#### 
# 1. Calculez les statistiques descriptives pour Sepal.Width de setosa et virginica
# 2. Visualiser les donnés de Sepal.Width (setosa et virginica)
# 3. Comparez les moyennes de Sepal.Width entre setosa et virginica (n'oubliez pas
#    de verifier la normalité des donnés)

