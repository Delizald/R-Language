#Visualisation of residuals

library(UsingR)
library(ggplot2)

head(father.son)

x<-father.son$fheight
y<-father.son$sheight
group<-1:1078
dat<-data.frame(x,y,group)

means<-data.frame(x,y,group)

head(dat)
head(means)

ggplot()+
  geom_point(data=dat,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y=y),color="red")

x<-c(50,80)
y<-x+3

line<-data.frame(x,y)

ggplot()+
  geom_point(data=dat,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y=y),color="red")+
  geom_line(data=line,aes(x=x,y=y))

datos<-rbind(dat,means)

ggplot()+
  geom_point(data=dat,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y=y),color="red")+
  geom_line(data=line,aes(x=x,y=y))+
  geom_line(data=datos,aes(x=x,y=y,group=group))


