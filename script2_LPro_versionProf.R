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

##########################################################################################
##############                   EXERCISE 1                        #######################
##########################################################################################

# Continuons avec les données des setosa et virginica

# Seléctionnez la colonne << Petal.Width >>

# Visualisez Petal.Width pour setosa et virginica avec une histogramme et boxplot

# Calculez les statistiques descriptives (moyenne, médian) pour setosa et virginica

# Testez pour normalité

# Comparez les moyennes avec un Student T-Test

##########################################################################################
##############                   EXERCISE 2                        #######################
##########################################################################################

# Importez les données "tr.csv" et "untr.csv"

# Seléctionnez les données quantitatives

# Visualisez les données avec une histogramme et boxplot

# Calculez les statistiques descriptives (moyenne, médian) pour les données

# Testez pour normalité

# Comparez les moyennes avec un Student T-Test


##########################################################################################
##############                   EXERCISE 3                        #######################
##########################################################################################

# Importez le fichier "tr2.csv"

# Visualisez les données avec une histogramme et boxplot

# Calculez les statistiques descriptives (moyenne, médian) pour les données

# NOTE: Il ne marche pas parce que il y a des valeurs 'NA'
# Regardez si il y a des NA's
is.na(tr2$rate)

# Compter les nombre des NA's
sum(is.na(rate))

# Enlevez les NA's
tr2b <- na.exclude(tr2)

# Verifiez que touts les NA's sont enlevés
sum(is.na(tr2b$rate))
