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