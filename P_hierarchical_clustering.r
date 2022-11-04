head(mtcars)
#creating a smaller dataset from mtcars
cars<- mtcars[ , c(1:4, 6:7, 9:11)]
head(cars)
library(dplyr)
hc<- cars %>% 
  dist %>% #compute distance/dissimilarity matrix
  hclust #compute hierarchical clusters
plot(hc)

rect.hclust(hc, k=2, border= "gray")
rect.hclust(hc, k=3, border= "blue")
rect.hclust(hc, k=4, border= "green4")
rect.hclust(hc, k=5, border= "darkred")
