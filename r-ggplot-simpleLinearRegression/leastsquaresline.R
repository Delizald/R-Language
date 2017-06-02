#sum of squared residuals
library(ggplot2)
library(UsingR)

x<-father.son$fheight
y<-father.son$sheight
group<-1:1078
dat<-data.frame(x,y,group)
line<-data.frame(x,y)
datos<-rbind(dat,means)
means<-data.frame(x,y,group)

head((means$y-dat$y))^2

lm(y~x,data=dat)
#Coefficients:
#  (Intercept)  x  
#33.8866       0.5141

slope<-0.5141
intercept<-33.8866

x<-c(57,78)
y<-slope*x+intercept

ggplot()+
  geom_point(data=dat,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y=y),color="red")+
  geom_line(data=line,aes(x=x,y=y))+
  geom_line(data=datos,aes(x=x,y=y,group=group))

x<-means$x
y<-slope*x+intercept
means<-data.frame(x,y,group)

ggplot()+
  geom_point(data=dat,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y=y),color="red")+
  geom_line(data=line,aes(x=x,y=y))+
  geom_line(data=datos,aes(x=x,y=y,group=group))

