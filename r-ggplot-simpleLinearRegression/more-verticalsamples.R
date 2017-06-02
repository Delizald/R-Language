#Plot three disctinct vertical samples of 100 points each
#Sample 1: x=1,mean=50,st.dev.=10
#Sample 2: x=9,mean=30,st.dev.=10
#Sample 3: x=15,mean=78,st.dev=10

x<-rep(1,100)
x<-c(x,rep(9,100))
x<-c(x,rep(15,100))

y<-rnorm(100,50,10)
y<-c(y,rnorm(100,30,10))
y<-c(y,rnorm(100,78,10))

dat<-data.frame(x,y)
x<-c(1,9,15)
y<-c(50,70,78)
means<-data.frame(x,y)

library(ggplot2)
ggplot()+
  geom_point(data=dat,aes(x=x,y=y))+
  geom_point(data=means,aes(x=x,y-y),size=7,color="red")