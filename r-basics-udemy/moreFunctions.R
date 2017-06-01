###Functions: seq, paste, rep

?seq #seq function, duh

seq() # using default settings

#simple sequence from 3 to 5
seq(3,5)
seq(from=3,to=5)

#using length
seq(from=3,length=3)

#step manipulations
seq(from=3,lenght=3,by=0.5)

seq(from=3,by=0.5,lenght=3) #changed order

?paste # next function

paste(1:4)

class(paste(1:4)) #checking the class

paste("xyz", 1:10)

#random vector with numbers
# and characters

paste("xyz", c(2,5,7,"test",4.5))

paste("xyz",1:10,sep="")# modifying the separator

?rep # net function

rep(c(3,4,5),3)

rep(1:10, times=3)

x = c(1,2,3) #creating x

rep(x, each = 3 ) #using each

rep(x,each = 3, times = 3)#combining arguments

##Working with index positions

x = 4:20 # this is our data

which(x==10)#double equal sign, logical operation

x[3]
