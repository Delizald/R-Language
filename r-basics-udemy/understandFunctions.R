### Understanding Functions in R

#setting a seed to make a random sample reproducible
set.seed(28);

#with argument name, exact argument order
runif(n = 3, min =3, max = 6);

set.seed(65);

#without argument name, exact argument order
runif(9,3,6);

set.seed(65);

#with argument name, mixed argument order
runif(min = 3, max = 6, n = 9);

set.seed(65);

# without argument name, mixed argument order
runif(3, 6, 9) # this means n=3, max=9

set.seed(65);

# using only the first argument
runif(3);

set.seed(65);

# using arguments 1 and 3
runif(3,,4);

###first coding steps

# R as a calculator
4+4   +5; #space does not matter at all!

#operators: + - / * ^

# Using several operators and round brackets
(10-3)^4;

#creating objects
x<-c(4,5,6);

c(4,5.2,76)-> y; #arrows work in both directions
y;

x = c(4,5,6);

#assign function
assign("x",c(4.2,1,5));

#c for concatenate

x # display in console

x = c(4,5,6); x # semicolon indicates a new row of code

# See which objects are already created
ls();

objects();

# Removing an object
rm("x");

# Working with vectors
x = c(y, 5, y);
x;

# Sum and roots
sum(x);

sqrt(x);

# Values at a given position within the vector
x[1];

newobject <- x < 5; newobject;

x # Comparison against original values

## Types of brackets

# () round brackets as the standard

# [] box brackets for index positions

# {} curled brackets for functions and loops

