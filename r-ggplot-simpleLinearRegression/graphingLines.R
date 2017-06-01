#Graphing lines

x<-c(1,8)
y<-c(3,10)
dat<-data.frame(x,y)

library(ggplot2)
ggplot()+geom_line(data=dat,aes(x=x,y=y),size=1,color="blue")
