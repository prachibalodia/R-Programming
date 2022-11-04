#Principal component analysis
#here we reduce the complexity of the data or dimension of the data and still 
#retain important informations

library(datasets)
head(mtcars)
cars<- mtcars[ , c(1:4, 6:7, 9:11)]
head(cars)

#compute PCA
#for entire data frame
pc<- prcomp(cars, 
            center= TRUE, #center means 0(optional)
            scale= TRUE) #sets unit variance(helpful)

#to specify variables

pc<- prcomp(~ mpg+cyl+disp+hp+wt+qsec+am+gear+carb,
            data= mtcars,
            center= TRUE,
            scale= TRUE)
summary(pc)
plot(pc)
pc

predict(pc) %>% round(2)
biplot(pc)
