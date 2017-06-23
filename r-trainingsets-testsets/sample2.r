library(ggplot2)

dat<-read.csv('dat.csv')

head(dat)

indices<-sample(1000,500)
train<-dat[indices,]
test<-dat[-indices,]

ggplot()+
  geom_point(data=train,aes(x=x,y=y))+
  ggtitle('TRAINING SET')
  
ggplot()+
  geom_point(data=test,aes(x=x,y=y))+
  ggtitle('TEST SET')

model<-lm(y~x,data=train)
x=4
predict(model,data.frame(x))

x<-c(1,9)
y<-predict(model,data.frame(x))
y

endpoints<-data.frame(x,y)
endpoints

ggplot()+
  geom_point(data=train,aes(x=x,y=y))+
  geom_line(data=endpoints,aes(x=x,y=y),color='red',size=1)+
  ggtitle('TRAINING SET')

x<-tests$x
predict(model,data.frame(x))

predict(model,test)

sum((test$y - predict(model,test))^2)

mse_test<-mean((test$y - predict(model,test))^2)
mse_test

#Quadratic model

model<-lm(y~x+I(x^2),data=train)
model

f<-function(x){
  predict(model,data.frame(x))
}

ggplot()+
  geom_point(data=train,aes(x=x,y=y))+
  geom_line(data=endpoints,aes(x=x,y=y),color='red',size=1)+
  stat_function(data=data.frame(x=c(1,9)),aes(x=x),fun=f,color='blue',size=1)+
  ggtitle('TRAINING SET')

mean(test$y-predict(model,test))^2

lm(y~poly(x,3,raw=TRUE),data=train)








