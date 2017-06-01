#working with data.frames
?airmiles

head(airmiles) #first 6 rows

tail(airmiles) #the last 6 rows

summary(mtcars)

plot(mtcars) #simple xy plot function

hist(airmiles) #histogram

head(mtcars)

sum(mtcars$wt)

attach(mtcars) #attach to R session env

sum(wt) #R knows which data.frame to use since it is attached

detach(mtcars)# remove from environment

sum(wt)# error message since mtcars it's not attached anymore

mtcars[2,6]

mtcars[c(2,5,8),6]
