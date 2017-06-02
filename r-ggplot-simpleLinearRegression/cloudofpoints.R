#Cloud of points

#Generate 100 data points in the following way:
#The x-coordinates are drawn from a normal population 
#of mean 10 and standard deviation of 5

#For each x-value, one y-value is drawn 
#from a normal population with mean 3x+1 and standard deviation 10
x<-rnorm(100,10,5)
y<-3*x+1
means<-data.frame(x,y)

library(ggplot2)
ggplot()+
  geom_point(data=means,aes(x=x,y=y),color="red")

x<-c(-5,25)
y<-3*x+1

ggplot()+
  geom_point(data=means,aes(x=x,y=y),color="red")+
  geom_line(data=lines,aes(x=x,y=y))+
  scale_x_continuous(limits=c(-10,30))+
  scale_y_continuous(limits=c(-20,80))
  
x<-means$x
y<-sapply(x,function(x) rnorm(1,3*x+1,10))
dat<-data.frame(x,y)

ggplot()+
  geom_point(data=means,aes(x=x,y=y),color="red")+
  geom_line(data=lines,aes(x=x,y=y))+
  scale_x_continuous(limits=c(-10,30))+
  scale_y_continuous(limits=c(-20,80))+
  geom_point(data=dat,aes(x=x,y=y))

