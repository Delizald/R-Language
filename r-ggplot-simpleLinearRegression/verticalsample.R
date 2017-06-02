rep(1,100) # a hundred 1's 

x<-(1,100)
y<-rnorm(100,50,10)

dat<-data.frame(x,y)
x<-1
y<-50
mean<-data.frame(x,y)
mean

library(ggplot2)
ggplot()+geom_point(data=dat,aes(x=x,y=y))+
  geom_point(data=mean,aes(x=x,y-y),size=7,color="red")

