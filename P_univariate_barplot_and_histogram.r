library(datasets)
head(mtcars)

#UNIVARIATE Distributions
# BAR CHART for Categorical Variables
barplot(mtcars$cyl)
cylinders<- table(mtcars$cyl) #creating a frequency table
barplot(cylinders) #bar chart
plot(cylinders) #gives default x-y line chart

# HISTOGRAM for Quantitative variables
hist(iris$Sepal.Length)
hist(iris$Petal.Width)
# HISTOGRAM BY GROUPS
par(mfrow= c(3,1)) # 3 rows and 1 column

# HISTOGRAM for each species using options(mostly used for comparison)

hist(iris$Petal.Width [iris$Species == "setosa"],
    xlim= c(0,3),
    breaks=9,
    main= "Petal width for setosa",
    xlab= "",
    col= "red")
hist(iris$Petal.Width [iris$Species == "versicolor"],
     xlim= c(0,3),
     breaks=9,
     main= "Petal width for Versicolor",
     xlab= "",
     col= "purple")
hist(iris$Petal.Width [iris$Species == "virginica"],
     xlim= c(0,3),
     breaks=9,
     main= "Petal width for Virginica",
     xlab= "",
     col= "blue")

# Restoring the original graphic parameters
par(mfrow=c(1,1))

