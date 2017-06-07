f<-function(x){
  return(x^2)
}

x<-c(0,10)
axis<-data.frame(x)

library(ggplot2)
library(UsingR)

ggplot()+
  stat_function(data=data.frame(x=c(10,15)),aes(x),fun=f)

