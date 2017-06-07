#smoothing spline
library(ggplot2)
library(UsingR)



fit<-smooth.spline(dat$x,dat$y,df=10)
predict(fit,10)$y

function(x){
  return(predict(fit,x)$y)
}

means$y<-predict(fit,means$x)$y
sum((dat$y-means$y)^2)
