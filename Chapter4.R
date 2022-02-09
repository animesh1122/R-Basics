#------------------------------
#Name:  Animesh Patel
#Date:  Feb-25, 2018
#Project: Chapter 4 
#------------------------------
 

car <- c(10, 20, 30)
fuel <- c(1,2,3)

new <- car *10
print(new)

#Sum
new1 <- car + fuel 
print(new1)


#Exponential - Multiplication/Division - Sum/Substracton 


#Operator and Function
"+" (3,5)
"-" (3,5)
"*" (3,5)
"/" (3,5)
"^" (3,5)


#Dealing with Infinity
3/0
4-Inf
Inf*3*(-1)

is.finite(9/0) 
is.infinite(9/0) 
#Infinite - > 1.8e308
is.finite(1.8e308+1)
is.finite(10^(305:310)) 
Inf/Inf #NaN - Not A Number - Consders as Numberic

NaN + 5
is.nan(6)
is.nan(NaN+6/4)
is.infinite(NaN+6/4) #-> Gives false
is.finite(NaN+6/4) #-> Gives false

#Missing Value - Not Available  - NA  can be treated as real numbers

x <- NA
print (x)
x <- c(1,2,NA)
print (x)
x <- c("1","2",NA)
print (x)
# NA -> Same missing for character and Numeric

# R treats -> NA (Missing) | NaN (Not a Number) | Inf - as different values
#infinite, undefined, and missing values 


#Vector: A vector is a one-dimensional set of values, all the same type.
# 1. Type 2. Structure 
str(a)
str(q)
str(hw)

b1 <- c(T, F, T, T, F)

a1<- c(1,5,6,00,0.4)
str(a1)

length(a1)

is.integer(a1)
is.numeric(a1)
is.numeric(q)
str(q)

c1 <- c(1L,2L,3L,5L)
str(c1)


# Make Vectors
d1 <- c(5:10)
d2 <- seq(from=4.5, to=10.5, by = 0.8)
print(d2)

d3 <- seq(from=4.5, to=10.5, length.out = 10)
print(d3)

# Combine vectors - c()

e1 <- c(c1,d1)
print(e1)

e1 <- c(d1,c1)
print(e1)

# Repeating vectors - > rep()
rep(d1,times =3)
rep(d1,each =3)
rep(c(0, 7), times = c(4, 2))
rep(d1,time=c(1,2,3,1,4,1))
rep(c(1,3,5),length.out=12)

#Getting Values in and out of Vectors
number <- 30:1
number

# Extracting Certain value from vector
number[2]
number[ c(2 , 3)] # inside - you have to give within C()

num1 <- number [c(1,5,10)]
print(num1)
# Store Indices as vector 

indi <- c(1,5,10)
num2 <- number[indi]
print(num2)
# Dropping elements in vector  by - sign
number[-3]
number[c(-3 , -10)]

number [-(1:20)]
number [-1:20]

#Changing values in a vector
number[1] <- 32
print(number)

number[c(1,2)] <- 32
number
number[c(1,2)] <- c(32, 31,30)
number

number[c(1,2,3,4,5)] <- c(32, 31)
number
#Recycle will be in multiple of replacement items -> will not give error.

#logic vactor 
num1 > 25
which(num1<25) # -> Gives idices number for TRUE 

num1[which(num1<25)] 

# Comparing Vectors 
num1 <- c(1,2,3)
num2 <- c(1,3, 3)
num1 == num2
num1 != num2
num1 >= num2
num1 <= num2

x <- c(0,0,3)
y <- c(0,3, 3)
x & y
x | y
! x
xor (x,y)
x | y

z = x < y
which (z)

x <- c(1,3,NA,5)
x>2
x[x>2]


min.num1<- min(num1)
min.num1<- num1 == min(num1)

print(min.num1)

max.num1<- max(num1)
max.num1<- num1 == max(num1)
print(max.num1)

min.num1 | max.num1 

#Summarizing logical vectors - T -1 and F-0
sum( max.num1)
sum(! max.num1)

any(max.num1)

all(max.num1)

#Summary 
x<-c(2,2,3,4,1)
cumsum(x)
cumprod(x)
cummin(x)
diff(x)
sum(x,y)

x<-c(2,2,3,4,1, NA)
sum(x, na.rm = TRUE)

diff(x)
x
round(diff(x)/x * 100)
round(diff(x)/x[1:4] * 100)













is.character(hw)
is.logical(b1)














