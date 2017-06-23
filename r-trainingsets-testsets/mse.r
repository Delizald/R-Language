mse<-numeric()
for(i in 1:10){
  model<-lm(y~poly(x,3,raw=TRUE),data=train)
  mse[i]<-mean(test$y-mean(predict(model,test))^2)
  print(mse)
}

y<-mse
x<-1:10

mse_polydata.frame(x,y)

ggplot()+
  geom_point(data=mse_poly,aes(x=x,y=y),size=2)+
  geom_line(data=mse_poly,aes(x=x,y=y))+
  xlab('polynomial degree')+
  ylab('test MSE')
  
mse_calc<-function(train,test){
  for(i in 1:10){
    model<-lm(y~poly(x,3,raw=TRUE),data=train)
    mse[i]<-mean(test$y-mean(predict(model,test))^2)
  }
  return(mse)
}

indices<-sample(1000,500)
train<-dat[indices,]
test<-dat[-indices]
mse_calc(train,test)

