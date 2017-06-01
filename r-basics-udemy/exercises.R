# Create an object called "myobject" and assign the values
#1:10 in at least 3 diferent ways

myobject<-(1:10);
myobject=(1:10);
(1:10)->myobject;
assign("myobject",1:10);

# Get the sum of "myobject"
sum(myobject);

# Create the following vector by using the paste function
#"R is great 4 and I will love it"
#"R is great 7 and I will love it"
#"R is great 45 and I will love it"

paste("R is great",c(4,7,45),"and i will love it");

#Vector of 1,23:repeat the vector to get 11 x 1, 10 x 2 and 10 x3

x = rep(1:3,length=31);
x;

#Get the value of this vector in position 7
x[7];

