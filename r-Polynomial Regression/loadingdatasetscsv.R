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
  stat_function(data=data.frame(x=c(-5,15)),aes(x=x),fun=f)
  geom_point(data=means,aes(x=x,y=y),color="red",size=3)

dat$group<-1:100
means$group<-1:100

groups<-rbind(dat,means)

ggplot()+
  geom_point(data=dat,aes(x=x,y=y))+
  stat_function(data=data.frame(x=c(-5,15)),aes(x=x),fun=f)
  geom_point(data=means,aes(x=x,y=y),color="red",size=3)+
  geom_line(data=groups,aes(x=x,y=y,group=group))
  
sum((dat$y-means$y)^2)

