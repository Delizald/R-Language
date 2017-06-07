setwd("c:/myworkingdirpath")
dat<-read.csv("myfile.csv")
dat

library(ggplot2)
library(UsingR)
ggplot()+
  geom_point(data=dat,aes(x=x,y=y))

lm(y~x,data=dat)

function(x){
  return(34.04*x-65.27)
}

ggplot()+
  geom_point(data=dat,aes(x=x,y=y))+
  stat_function(data=data.frame(x=c(-5,15)),aes(x=x),fun=f)+
  geom_point(data=means,aes(x=x,y=y),color="red",size=3)

dat$group<-1:100
means$group<-1:100

groups<-rbind(dat,means)

ggplot()+
  geom_point(data=dat,aes(x=x,y=y))+
  stat_function(data=data.frame(x=c(-5,15)),aes(x=x),fun=f)+
  geom_point(data=means,aes(x=x,y=y),color="red",size=3)+
  geom_line(data=groups,aes(x=x,y=y,group=group))
  
sum((dat$y-means$y)^2)

lm(y~x+I(x^2),data=dat)

function(x){
  return(2.9522*x^2+0.9719*x-0.5685)
}

ggplot()+
  geom_point(data=dat,aes(x=x,y=y))+
  stat_function(data=data.frame(x=c(-5,15)),aes(x=x),fun=f)

means$y<-f(means$x)

ggplot()+
  geom_point(data=dat,aes(x=x,y=y))+
  stat_function(data=data.frame(x=c(-5,15)),aes(x=x),fun=f)+
  geom_point(data=means,aes(x=x,y=y),color="red",size=3)

groups<-rbind(dat,means)

#Best fitting polynomial degree of 3

lm(y~x+I(x^2)+I(x^3),data=dat)

function(x){
  return(0.02024*x^3+2.49528*x-1.67268)
}



