## Exercises pour l'examen 

virg <- read.csv("virginica.csv",header=TRUE)

vers <- read.csv("versicolor.csv",header=TRUE)

virg.pl <- virg$Petal.Length

vers.pl <- vers$Petal.Length

# Histogramme
hist(virg.pl)

hist(vers.pl)

# Boxplot
boxplot(virg.pl, vers.pl)

# Moyenne
mean(virg.pl)
mean(vers.pl)

# Médian
median(virg.pl)
median(vers.pl)

# Écart-type
sd(virg.pl)
sd(vers.pl)

# Variance
var(virg.pl)
var(vers.pl)

# Z-score:
virg.low <- (min(virg.pl) - mean(virg.pl))/sd(virg.pl)
(min(virg.pl) - mean(virg.pl)) / sd(virg.pl)
virg.up <-  (max(virg.pl) - mean(virg.pl))/sd(virg.pl)

vers.low <- (min(vers.pl) - mean(vers.pl))/sd(vers.pl)
vers.up <-  (max(vers.pl) - mean(vers.pl))/sd(vers.pl)

# Normalité:
shapiro.test(virg.pl)
shapiro.test(vers.pl)

t.test(virg.pl, vers.pl)
