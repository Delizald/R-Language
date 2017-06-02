#Samples along a line
#Create four vertical samples of 100 points each
#Means must lie on the line y = 3x + 1
#x-locations: 1,9,15,22

x<-c(0,25)
y<-3*x + 1
line<-data.frame(x,y)

library(ggplot2)

x<-c(1,9,15,22)
y<-3*x + 1
means<-data.frame(x,y)

ggplot()+
  geom_line(data=line,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y=y),size=7,color="red")

x<-c(rep(1,100),rep(9,100),rep(15,100),rep(22,100))
y<-c(rnorm(100,4,10),rnorm(100,28,10),rnorm(100,46,10),rnorm(100,67,10))

dat<-data.frame(x,y)

ggplot()+
  geom_line(data=line,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y=y),size=7,color="red")



