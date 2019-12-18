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
# EXPLIQUER :
# 1.  Set working directory 
# 2. Ouvrir un script existant
# 3. Commencer un nouveau script
# 4. Montrer le Console
# 5. Montrer l'environnement
# 6. Commencer un << Project >>
# 7. Montrer Files, Plots, Packages, Help, Ctrl F / Find
# 8. Changer les tailles de différentes fenetres (Script, Plot, etc.)


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

# ACTIVITÉ: Faire quelques calculs dans le script

# Nous pouvons mettre le calcul directement dans la console. 
# ACTIVITÉ: Essayez un calcul dans la console

# QUESTION: Demander aux étudiants l'avantage d'écrire une script comparé vs.
# mettre directement dans la console.

# Nous pouvons stocker des valeurs / données dans une variable avec  <<  <-  >>
x <- 2
x

# NOTE: Si nous utilisons le meme nom de variable pour une nouvelle opération,
# le valeur va être reemplacée.
x <- 5
x

# ACTIVITÉ: Demander les étudiants essayez avec une autre chiffre

# Une variable peut contenir le résultat d'un calcul:
#Addition
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

# ACTIVITÉ: Demander les étudiants de faire des calculs de: addition, soustraction
# multiplication, division

# Exponentiel:
x <- 2^3
x

# ACTIVITÉ: Essayez des autres exponentiels

# Les FONCTIONS sont des raccourcis qui implementent un calcul
# Pour calculer la racine carrée (square root), nous utilisons une fonction << sqrt >>:
x <- sqrt(4)
x

# Pour avoir plus des informations sur une fonction, utilisez << ? >>
?sqrt

# ACTIVITÉ: Essayez des autres racines carrées

# Nous pouvons faire des calculs plus complex avec plusieurs etapes
# QUESTION: Rappeler les étudiants l'ordre des operations
# R va utiliser cette ordre

x <- (4 + 3)/2*6
x

x <- 4 + 3/2*6
x

x <- sqrt(4)/3
x

# ACTIVITÉ: Faire quelques calculs avec plusieurs étapes

#############################################################################
##########              2. DESCRIPTION DES DONNÉES   ########################
#############################################################################

# Avant commencer prochaine étape: Dire aux étudiants qu'ils peuvent
# commencer un nouveau script avec la prochaine partie s'ils preferent.

# Description des donnés
# Créer une list des numéros
x <- c(1, 9, 3, 4, 7, 11, 9, 9, 8, 7, 2, 4)
x

# Nous commençons avec une visualisation des données:
# Barplot
barplot(x)

# Histogramme: 
hist(x)

# QUESTION : Que c'est que la différence entre le barplot vs. histogram?

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

# QUESTION: Pourquoi le plot a changé mais le stripchart n'a pas changé?

# ACTIVITÉ: Régardez les images précédents avec la fleche bleu
# ACTIVITÉ: Exportez l'image

# QUESTION: Quelles sont les statistiques descriptives du base? (Écrire sur le board)

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

# ACTIVITÉ: Répéter avec votre liste des numéros

#############################################################################
##########          3. OUTLIERS (DONNÉES ABERRANTS)    ######################
#############################################################################

# Outliers (donnés aberrant)
x <- c(1, 9, 3, 4, 7, 11, 9, 9, 8, 7, 2, 4)
x

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

# QUESTION: Est-que il y a une fonction pour trouver les valeur minimale / maximale?
# QUESTION: Pour quoi cettes fonctions peuvent être util?
min(x)
z.petit <- (min(x) - mean(x)) / sd(x)
z.petit

max(x)
z.grand <- (max(x) - mean(x)) / sd(x)
z.grand

# Une deuxieme example des outliers
n <- c(5, 8, 4, 6,2, 3, 8, 10, 6, 3, 10, 19, 5, 12, 5, 10, 4, 9, 9, 5, 10)

# Visualisez les donnés:
# Histogramme:
hist(n)

# Boxplot: 
boxplot(n)

# Moyenne:
mean(n)

# Médian:
median(n)

# Écart type (Standard Deviation)
sd(n)

# Calculez le Z-score
# |Z| > 2: probabilité < 5% (outlier suspect)
# |Z| > 3: probabilité < 3‰ (outlier très suspect)
z.n <- (max(n) - mean(n)) / sd(n)
z.n


# Que c'est que passe si nous enlevons l'outlier:
n2 <- c(5, 8, 4, 6,2, 3, 8, 10, 6, 3, 10, 5, 12, 5, 10, 4, 9, 9, 5, 10)

# Visualisez les donnés:
# Histogramme:
hist(n2)

# Boxplot: 
boxplot(n2)

# Effet d'outlier sur la moyenne et médian:
mean(n2)
median(n2)

# Comparez avec << n >>
mean(n)
median(n)

# Outlier dans les petits echantillons
# QUESTION: Pourquoi un outlier a plus d'effet sur un petit echantillon?
n.p <- c(6.4, 2.1, 7.4, 8.3, 7.5, 6.2)

# Visualisez les donnés:
# Histogramme:
hist(n.p)

# Boxplot: 
boxplot(n.p)

# QUESTION: Où est l'outlier?

# Statistiques descriptives:
# Moyenne:
mean(n.p)

# Médian:
median(n.p)

# Écart type (Standard Deviation)
sd(n.p)

# Calculez le Z-score
z.np <- (min(n.p) - mean(n.p)) / sd(n.p)
z.np

# Pourquoi |Z| < 2 ?

# Effet sur la moyenne et median:
# Enlever l'outlier:
n.p2 <- c(6.4, 7.4, 8.3, 7.5, 6.2)

# Visualisez les donnés:
# Histogramme:
hist(n.p2)

# Boxplot: 
boxplot(n.p2)

# Statistiques descriptives:
# Moyenne:
mean(n.p2)

# Médian:
median(n.p2)

# Comparez avec les donnés avec l'outlier:
mean(n.p)
median(n.p)

# Difficil à detecter un outlier avec un petit échantillon parce que
# nous sommes moins sûr de la distribution et chaque point a un grand effet
# Moins des donnés = moins sûr de vrai distribution parce que nous échantillons
# une population, moins sûr quelles valeurs sont répresentatives

# QUESTION: D'ou vienent les outliers? Que c'est que nous devons faire?


#############################################################################
##########          4. NORMALITÉ DES DONNÉES           ######################
#############################################################################

# Normalité des donnés :
#QUESTION: Pourquoi c'est important regarder la normalité des donnés?

# Importer une fichier csv
d1 <- read.csv("d1.csv", header = TRUE, sep=",")
# QUESTION: Expliquer que c'est que chaque parti signifique,
# expliquer les complications des fichiers csv

# Importer une fichier csv
d2 <- read.csv("d2.csv", header = TRUE, sep=",")

# Regardez les donnés:
d1

# Alternative (pour les grands tableaux): regarder les donnés avec le fonction << View >>
View(d1)
View(d2)
# Une tableau avec 1 colonne et 1000 lignes

# QUESTION: Est-que nous pouvons voir des outliers ou comprends la distribution
# avec autant des donnés?

# Avec une dataframe ou tableau, il faut sélectionner 
# une colonne specifique pour faire des operations / calculs. 
# Sélectionnez la colonne avec << $ >> :
x1 <- d1$x
x2 <- d2$x

# Visualisez les donnés
# QUESTION: Qu'est-ce que nous attendons voir dans une histogram ou courbe si 
# les donnés sont normale?
#Histogramme:
hist(x1)

# Comparez avec d2:
hist(x2)

# QUESTION: Quelles donnés rassemble plus une distribution normale? Pourquoi?

# Pour visualisez une courbe de densité. Utile quand il y a beaucoup des donnés
plot(density(x1))
plot(density(x2))

# QUESTION : Quelles donnés rassemble plus une distribution normale? Pourquoi?

# Statistiques descriptives:
mean(x1)
median(x1)

mean(x2)
median(x2)

# QUESTION: Pour quelles donnés est-que le moyenne est un mieux mesure? Pour quelles
# le médian? Pourquoi?

# Test statistique pour la normalité:
# d1
# Directement:
shapiro.test(x1)

# Créer un variable:
shap.d1 <- shapiro.test(x1)
shap.d1$p.value

# d2
shap.d2 <- shapiro.test(x2)

# Si les donnés sont normale nous pouvons calculer le  
# 95% Confidence Interval (Intervalle de Confiance):
# avec cette formule : moyenne + / - 1.96*SD
set.lower <- mean() - 1.96*sd(x1)
set.upper <- mean() + 1.96*sd(x)

# QUESTION: Pourquoi nous ne pouvons pas utiliser cette formule si 
# les donnés ne sont pas normale?

# Normalité avec les petits echantillons:
# Nos donnés 'x':
x <- c(1, 9, 3, 4, 7, 11, 9, 9, 8, 7, 2, 4)
x
hist(x)
plot(density(x))

# QUESTION: Est-que ces donnés semblent normaux?

# Test de Shapiro-Wilks:
shap.x <- shapiro.test(x)

  
# Si les donnés sont normale nous pouvons calculer le  
# 95% Confidence Interval (Intervalle de Confiance):
# avec cette formule : moyenne + / - 1.96*SD
lower <- mean(x) - 1.96*sd(x)
lower
upper <- mean(x) + 1.96*sd(x)


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

#Créer une nouveau variables pour Sepal.Length
sep.len1 <- setosa$Sepal.Length
sep.len1

# Visualisation des données:
# Histogram: 
hist(sep.len1)

# Comparer au 'barplot'
barplot(sep.len1)

# QUESTION: Pourquoi nous pouvons vouloir faire un barplot?

# Boxplot
boxplot(sep.len1)

# Visualiser les points:
plot(sep.len1)
stripchart(sep.len1)

# Est-que il y a une outlier?

# Statistiques descriptives:
# Moyenne:
mean(sep.len1)

# Médian:
median(sep.len1)

# Écart-type
sd(sep.len1)

# Variance
var(sep.len1)

# Résumé des donnés:
summary(sep.len1)

# Pour idéntifier les outliers, rappelez: le Z-score
# Formule: Z-score = (x – moyenne) / SD
# Unité = nombre d’écarts-type de déviation
# |Z| > 2: probabilité < 5% (outlier suspect)
# |Z| > 3: probabilité < 3‰ (outlier très suspect)
z <- (max(sep.len1) - mean(sep.len1)) / sd(sep.len1)
z

# L'effet d'outlier:
# Enlever l'outlier
sep.len2 <- sep.len1[(-25)]

# Visualisation des donnés sans l'outlier:
# Histogramme: 
hist(sep.len2)

# Boxplot: 
boxplot(sep.len2)

# Nuage de points: 
stripchart(sep.len2)

#Moyenne
mean(sep.len2)

#Médian
median(sep.len2)

# Comparez aux moyenne et médian avec l'outlier:
mean(sep.len1)
median(sep.len1)


# L'effet d'un outlier depend du nombres des echantillons

# QUESTION: Pourquoi un outlier a plus d'effet sur un petit echantillon?

# Regardez l'effet d'une outlier avec moins d'echantillons
setosa.sm <- read.csv("setosa.small.csv",header=TRUE, sep=",")

# Sélectionnez Sepal.Length
sep.len3 <- setosa.sm$Sepal.Length
sep.len3

# Visualisation :
hist(sep.len3)
boxplot(sep.len3)
stripchart(sep.len3)

# Statistiques descriptives:
# Moyenne
mean(sep.len3)

# Médian
median(sep.len3)

# Enlever l'outlier
sep.len4 <- sep.len3[(-5)]

# Visualisation des donnés sans l'outlier
hist(sep.len4)
boxplot(sep.len4)

# Recalculez le moyenne et médian sans l'outlier
# Moyenne
mean(sep.len4)

# Médian
median(sep.len4)

# Comparez aux:
mean(sep.len3)
median(sep.len3)

# QUESTION: Quelle mesure a moins changer entre la moyenne et le médian?

#############################################################################
##########        6. COMPAREZ DEUX GROUPES DES DONNÉES      #################
#############################################################################

# Student T - test

# Importez les donnés
# Setosa:
setosa.full <- read.csv("script_donnees/setosa.csv",header = TRUE, sep=",")

# Virginica
virginica.full <- read.csv("script_donnees/virginica.csv",header=TRUE, sep=",")

# Sélectionnez le colonne "Sepal.Length" pour setosa et virginica
sep.setosa <- setosa.full$Sepal.Length

sep.virginica <- virginica.full$Sepal.Length

# Histogram, individuelles
hist(sep.setosa)
hist(sep.virginica)

# Boxplot, setosa et virginica:
# QUESTION: Comment les boxplots dans le meme image?
boxplot(sep.setosa, sep.virginica)

# Statistiques descriptives pour setosa et virginica
# Moyenne
mean(sep.setosa)
mean(sep.virginica)
# Comparez la moyenne pour setosa et virginica

# Médian
median(sep.setosa)
median(sep.virginica)
# Comparez la median pour setosa et virginica

# QUESTION: Est-que le moyennes / médians sont différents?

# Standard Deviation (Écart-type)
sd(sep.setosa)
sd(sep.virginica)
# Comparez la écart-type / standard deviation pour setosa et virginica

# Variance
var(sep.setosa)
var(sep.virginica)

# QUESTION: Que c'est que nous devons régarder / confirmer avant faire
# le test Student? 

# !!!! NOTE: Étudiants n'ont pas les prochaines lignes de code

# Regardez si les donnés sont normaux :
shap.set <- shapiro.test(sep.setosa)
shap.set$

shap.vir <- shapiro.test(sep.virginica)
shap.vir

# Si les donnés sont normale nous pouvons calculer le 95% Confidence Interval 
#(Intervalle de Confiance) avec 
# cette formule : moyenne + / - 1.96*SD
set.lower <- mean(sep.setosa) - 1.96*sd(x)
set.upper <- mean(sep.setosa) + 1.96*sd(x)

vir.lower <- mean(sep.virginica) - 1.96*sd(x)
vir.upper <- mean(sep.virginica) + 1.96*sd(x)

# Comparez les moyennes entre setosa et virginica avec le test Student
stu.test <- t.test(sep.setosa, sep.virginica)
stu.test

# Exercises: 
# 1. Calculez les statistiques descriptives pour Petal.Length de setosa et virginica
# 2. Visualiser les donnés de Sepal.Width (setosa et virginica)
# 3. Comparez les moyennes de Sepal.Width entre setosa et virginica (n'oubliez pas
#    de verifier la normalité des donnés)

