#regression
#something for everyone
#out of many, one
library(datasets)
head(USJudgeRatings)
data<-USJudgeRatings
head(data)
x<- as.matrix(data[-12])
y<- data[, 12]

#regression with simultaneous entry
#using variable groups
reg1<- lm(y~x) #linear model(y is to be predicted y all the values of x)
reg1
summary(reg1)

anova(reg1) #coefficients w/inferential test
coef(reg1) #coef (same as reg1)
confint(reg1) #CI for coef
resid(reg1) #residuals case-by-case
par(mar= c(1,1,1,1))
hist(residuals(reg1)) #Histogram of residuals
