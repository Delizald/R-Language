dat<-read.csv('dat.csv')

dat[732,2]

dat[52]

indices<-c(605,3,321)
dat[indices]

indices<-400:500

sample(10,4)

sample(20,11)

sample(1000,500)

indices<-sample(1000,500)

dat[indices,]

train<-dat[indices,]

test<-dat[-indices]

train





