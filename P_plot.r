install.packages("pacman")
require(pacman)
library(pacman)
pacman:: p_load(shiny, dplyr, ggplot2)
library(datasets)


head(iris)
?plot
plot(iris$Species)
plot(iris$Petal.Length)
plot(iris$Species, iris$Petal.Width)
plot(iris$Petal.Length, iris$Petal.Width)
plot(iris)
plot(iris$Petal.Length, iris$Petal.Width,
     col= "#cc0000",
     pch= 19,
     main= "Iris: Petal Length Vs Petal Width",
     xlab= "Petal Length",
     ylab= "Petal Width")
par("mar")
par(mar= c(1,1,1,1))
plot(cos, 0,2*pi)
plot(exp,1,5)
plot(dnorm, -3,+3, 
     col= "#cc0000",
     lwd= 5,
     main= "Standard Normal Distribution",
     xlab= "z-scores",
     ylab= "Density")
