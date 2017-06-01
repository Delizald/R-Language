#Graphs in R Base

#3 main data visualisation systems:
#lattice, ggplot2 and R Base

#let's do a simple scatterplot

x=5:7 #3 integer data points
y=8:10

#default plot output
plot(x,y)

#data is a time series, line plot
plot(lynx)

#title, color, title color, title magnification
plot(lynx, main="Lynx Trappings",col="red",col.main=52,cex.main=15)

#label names
plot(lynx,ylab="Lynx Trappins", xlab="")

#label orientation
plot(lynx,ylab="Lynx Trappings", xlab="",las=2)

#las - 0:3, scale orientation

#changing the session parameter, 2*2 plot matrix
par(mfrow=c(2,2), col.axis="red")

plot(1:8, las=0, xlab="xlab", ylab="ylab", main="LAS = 0")
plot(1:8, las=1, xlab="xlab", ylab="ylab", main="LAS = 1")
plot(1:8, las=2, xlab="xlab", ylab="ylab", main="LAS = 2")
plot(1:8, las=3, xlab="xlab", ylab="ylab", main="LAS = 0")

#color manipulation

colors() #gives you a list of available colors

#point symbol types

?pch

x=2:4

plot(x,pch="c") #using letters as point symbols

plot(x,pch="13") #symbol nr 13

#Line Types

par(mfrow=c(1,1),col.axis="black") #back to default parameters

library(plotrix) #add on package for "ablineclip". Install if not available

plot(1:7, ylab="",main="Line Types lty 0:6", xlab="lty 0:6") #test plot

ablineclip(v=1, lty=1, col="sienna2", lwd=2) # solid (default)
ablineclip(v=2, lty=2, col="sienna2", lwd=2) # dashes
ablineclip(v=3, lty=3, col="sienna2", lwd=2) # dots
ablineclip(v=4, lty=4, col="sienna2", lwd=2) # dot dash
ablineclip(v=5, lty=5, col="sienna2", lwd=2) # solid (default)
ablineclip(v=6, lty=6, col="sienna2", lwd=2) # thicker twodash

ablineclip(v=7, lty=0, col="sienna2", lwd=2) # blank

#plot types of R base plot

?plot

#specify which kind of plot we want with "type"

plot(lynx) #plot for time series data

plot(lynx, type="p",main="Type p") #points ->default
plot(lynx, type="l",main="Type l") #lines -> def fot time series
plot(lynx, type="b",main="Type b") #points connected by lines
plot(lynx, type="b",main="Type c") #lines only of b
plot(lynx, type="o",main="Type o") #points overlaid by lines
plot(lynx, type="h",main="Type h") #high density
plot(lynx, type="s",main="Type s") #steps
plot(lynx, type="n",main="Type n") #no plot

#Advanced line plot with R Base
par(mar=c(4,3,3,3),color.axis="darkgreen") #change plot margins
plot(cars$speed,type="s",col="red",bty="n",xlab="Cars ID", ylab="")
text(8,14,"Speed in mph", cex=0.85,col="red") #adding explanatory text plot to 1

par(new=T)#allows 2 in 1 plot

plot(cars$dist, type="s",bty="n",ann=F, axes=F, col="darkblue")
axis(side=4,col="darkblue") # y axis for plot 2
text(37,18, "Stopping distance in ft", cex="0.85",col="darkblue")
title(main="Speed and Stopping\n Distances of Cars")
#??? graphical parameters

?par
par()

########Graphs exercise

# 1. get familiar with "rivers" - how many observations?
# 2. plot rivers against its index (hint: number of observation on x)
# 3. add: header (red), label names
# 4. change the point symbol and point color

?rivers #141 observations

x=1:141
y = rivers

plot(x,y,col ="green",pch=20, main="Lengths of \n Major N. American Rivers",
     col.main="red", xlab="", ylab="length in miles")


