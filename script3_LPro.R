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
##############           CONTROL DE QUALITÉ DANS R                 #######################
##########################################################################################
# Adapté de "A quick tour of qcc", Luca Scrucca
# https://cran.r-project.org/web/packages/qcc/vignettes/qcc_a_quick_tour.html

# Installez package << qcc >>
library(qcc)

# Chargez un jeux de données du package
data(pistonrings)

# Régardez les données
View(pistonrings)

# Régardez les premieres 6 lignes des données:
head(pistonrings)

# Il y a 5 mésures par échantillon (sample)
# Groupez les mésures par 'sample' (échantillon)
diameter <- with(pistonrings, qcc.groups(diameter, sample))
head(diameter)

# Créer un Xbar chart
# Calibration: premiere 25 lignes; New data: lignes 26 - 40
q1 <- qcc(diameter[1:25,], type="xbar", newdata=diameter[26:40,])
summary(q1)

# Visualisez seulement "New data"
plot(q1, chart.all=FALSE)

# Enlevez les mésures / statistiques en bas
plot(q1, add.stats=FALSE)

# Niveau confiance à 99%
q1 <- qcc(diameter[1:25,], type="xbar", newdata=diameter[26:40,],
         confidence.level=0.99)

#Ajoutez warning limits  à 2 écarts types (std. deviations):
q1 <- qcc(diameter[1:25,], type="xbar", newdata=diameter[26:40,], plot=FALSE)
(warn.limits = limits.xbar(q1$center, q1$std.dev, q1$sizes, 2))

plot(q1, restore.par = FALSE)
abline(h = warn.limits, lty = 3, col = "red")

#Ajoutez warning limits  à 3 écarts types (std. deviations):
q1 <- qcc(diameter[1:25,], type="xbar", newdata=diameter[26:40,], plot=FALSE)
(warn.limits = limits.xbar(q1$center, q1$std.dev, q1$sizes, 3))

plot(q1, restore.par = FALSE)
abline(h = warn.limits, lty = 3, col = "red")


# Faire un R chart: Ranges of continuous process variable 
q2 <- qcc(diameter[1:25,], type="R")


q3 <- qcc(diameter[1:25,], type="R", newdata=diameter[26:40,])
summary(q3)

# Faire un S chart: Standard deviations
q4 <- qcc(diameter[1:25,], type="S")

q5 <- qcc(diameter[1:25,], type="S", newdata=diameter[26:40,])
summary(q5)

# p chart - Proportion of nonconforming units
data(orangejuice)
q1 <- with(orangejuice, 
          qcc(D[trial], sizes=size[trial], type="p"))

# np chart - Number of nonconforming units
q2 <- with(orangejuice, 
          qcc(D[trial], sizes=size[trial], type="np"))

inc <- setdiff(which(orangejuice$trial), c(15,23))
q2 <- with(orangejuice, 
          qcc(D[inc], sizes=size[inc], type="p",
              newdata=D[!trial], newsizes=size[!trial]))
