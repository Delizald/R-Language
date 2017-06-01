a<-4
b<-9
dat<-data.frame(a,b)
dat
library(ggplot2)
ggplot()+geom_point(data=dat,aes(x=a,y=b),size=5,color="blue")

ggplot()+geom_point(data=dat,aes(x=a,y=b),size=10,color="red")