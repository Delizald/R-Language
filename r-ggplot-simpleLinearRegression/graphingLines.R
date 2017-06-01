#Graphing lines
library(ggplot2)

x<-c(1,8)
y<-c(3,10)
dat<-data.frame(x,y)


ggplot()+geom_line(data=dat,aes(x=x,y=y),size=1,color="blue")

a<-c(0,10)
b<- -5*a+1
datos<-data.frame(a,b)
ggplot()+geom_line(data=dat,aes(x=a,y=b),size=1,color="blue")

