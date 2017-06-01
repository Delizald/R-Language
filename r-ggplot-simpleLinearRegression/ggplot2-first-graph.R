a<-4
b<-9
dat<-data.frame(a,b)
dat
library(ggplot2)
ggplot()+geom_point(data=dat,aes(x=a,y=b),size=5,color="blue")

ggplot()+geom_point(data=dat,aes(x=a,y=b),size=10,color="red")

#Controlling axis properties
x<-c(2,5,1)
y<-c(6,4,9)
datos<-data.frame(x,y)
ggplot()+geom_point(data=datos,aes(x=x,y=y),size=6,color="green")+
  scale_x_continuous(limits=c(0,15),breaks=seq(0,15,1))+
  scale_y_continuous(limits=c(0,15),breaks=seq(0,15,1))

seq(0,15,1)
seq(0,15,5)
