#simultaneous several different prespectives on the same thing

#overlaying or imposing one plot on the top of other
#to gain more info and deeper insight

library(datasets)
lynx
head(lynx)

par(mar=c(1,1,1,1))
hist(lynx$lynx)
hist(lynx$lynx,
     breaks=14, #suggests 14 bins
     freq= FALSE ,#axis shows density not frequency
     col= "thistle1",
     main= paste("Histogram of Annual Canadian Lynx", "Trappings, 1821-1934"),
     xlab= "Number of Lynx Trapped")


#add a normal distribution
curve(dnorm(x, mean= mean(lynx$lynx), sd= sd(lynx$lynx)),   #x denotes the axes, sd is standard deviation
      col= "thistle4",
      lwd=2,
      add= TRUE)  #superimpose on the previous graph

# Add two kernel density estimators
lines(density(lynx$lynx), col= "blue", lwd=2)
lines(density(lynx$lynx, adjust=3), col= "purple", lwd=2)

#Add a Rug plot
rug(lynx$lynx, lwd=2, col="gray")
