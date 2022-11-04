library(datasets)
#Summary
summary(iris$Species)
summary(iris$Sepal.Length)
summary(iris)

#Describe - belongs to psych package
install.packages("psych")
library(psych)
p_help(psych, web= F) #to get help throug a web page loaded in R itself
describe(iris)

#Selecting cases
summary(iris$Species)
#Selecting case - Setosa
hist(iris$Petal.Length[iris$Species == "setosa"],
     main= "Petal.Length: Setosa")
#Selecting case - versicolor
hist(iris$Petal.Length[iris$Species == "versicolor"],
     main= "Petal.Length: versicolor")
#Selecting case - virginica
hist(iris$Petal.Length[iris$Species == "virginica"],
     main= "Petal.Length: virginica")
#Selecting case- short virginica petals only
hist(iris$Petal.Length[iris$Species == "virginica" & iris$Petal.Length < 5.5],
     main= "Short Virginica Petals")

#Creating a subsample

i.setosa<- iris[iris$Species == "setosa",]
head(i.setosa)
summary(i.setosa$Petal.Length)