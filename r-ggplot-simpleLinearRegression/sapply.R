#sapply
x<-c(2,4,9,15)
sqrt(x)
sapply(x,function(x) sqrt(x))
sapply(x,function(x) rnorm(1,x,10))