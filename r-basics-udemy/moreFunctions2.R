# Brief description: R functions are OBJECTS
# They do calculations for you
# R function structure: name <- function (argument) {statements}
# The arguments specify the components to be used in the function

myfirstfn <-function(x){x+X}
myfirstfn(10)

# stepwise working functions
mysecondfn <- function(t,z){
  value=z*3
  value=value*t
  print(value)
}

t = 5
z = 9

mysecondfn(t,z)

#loops
for(i in 1:15 ){ print(i) }

#Example: calc of primers with the Erastosthenes method
PrimVec = function(n){
  #start from 2
  if(n>=2){
    #
  }  
}
  
