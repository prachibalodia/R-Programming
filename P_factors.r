#Create Data

(x1<- 1:3)
(y<- 1:9)

#Combine variables
(df1 <- cbind.data.frame(x1, y))
typeof(df1$x1)
str(df1)

#as factor

(x2<- as.factor(c(1:3)))
(df2<- cbind.data.frame(x2,y))
typeof(df2$x2)
str(df2)
