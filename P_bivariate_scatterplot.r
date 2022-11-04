#BIVARIATE Distributions(Association bw two variables)

#Scatter Plot
# we look for linear, spread, correlation, outliers
library(datasets)
head(mtcars)

#checking the univariate distribution first
hist(mtcars$wt)
hist(mtcars$mpg)

#Basic X-Y plot for two quantitative variables
plot(mtcars$wt, mtcars$mpg)

# Adding some more options to it

plot(mtcars$wt, mtcars$mpg,
     col= "#cc0000",
     pch= 19, 
     cex= 1.5, # changing the size to 150%
     main= "MPG as a function of Weight of cars",
     xlab= "Weight (in 1000 pounds)",
     ylab= "MPG")


# clearing the packages

detach("package:datasets", unload= TRUE)