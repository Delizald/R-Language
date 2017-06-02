#install.packages("UsingR")
library(UsingR)
library(ggplot2)

father.son
head(father.son)

ggplot()+
  geom_point(data=father.son,aes(x=fheight,y=sheight))

x<-c(60,75)
y<-c(63,78)
line<-data.frame(x,y)
ggplot()+
  geom_point(data=father.son,aes(x=fheight,y=sheight))+
  geom_line(data=line,aes(x=x,y=y))

