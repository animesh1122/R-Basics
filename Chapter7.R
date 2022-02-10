#------------------------------
#Name:  Animesh Patel
#Date:  APR-5, 2018
#Project: Chapter 7
#------------------------------
#------------------------------

# Working in More Dimensions
# New Dimentions 
# Arrays have
# two very important features:
  # They contain only a single type of value.
  # They have dimensions.
#An array with two dimensions is a matrix.
# Anything with more than two dimensions is simply called an array.


#Creating your first matrix
matrix()

matrix(1:12,ncol = 2)
matrix(1:12,nrow = 3)
mx <- matrix(1:12,nrow = 3, byrow = TRUE)
str(mx)
dim(mx)
nrow(mx)
ncol(mx)
length(mx)

attributes(mx)

# Combining vectors into a matrix
baskets.of.Granny <- c(12, 4, 5, 6, 9, 3)
baskets.of.Geraldine <- c(5, 4, 2, 4, 12, 9)
baskets.team <- rbind(baskets.of.Granny, baskets.of.Geraldine)
str(baskets.team)

baskets.team1 <- cbind(baskets.of.Geraldine,baskets.of.Granny)

baskets.team
baskets.team1

baskets.team[2,]
baskets.team1[-5:-6,]
nr <- nrow(baskets.team)
nc <- ncol(baskets.team)

baskets.team[-2,,drop=FALSE]
baskets.team[1,2] <- 1000
baskets.team
rownames(baskets.team)

colnames(baskets.team1) <- c("Col1", "Col2")
colnames( baskets.team1)
colnames(baskets.team) <- c("1st", "2nd", "3th", "4th", "5th", "6th")
colnames(baskets.team)[2] 
baskets.team[1,]
baskets.team+100


new_mtr <- matrix(10:21,ncol =  2)
new_mtr + baskets.team

new_mtr
new_mtr + 2:4
rowSums(new_mtr)

rowsum.data.frame(data.frame(new_mtr)) 

t(new_mtr)
t(t(new_mtr))
solve(new_mtr)

new_mtr1 <- matrix(1:16,ncol = 4)
new_mtr1
solve(new_mtr1)

new1 <- matrix(1:4,ncol = 2)
new2<- matrix(1:4,ncol = 2)
new1 %*% new2 
  my.array <- array(1:24, dim = c(3, 4, 2))

  my.array

  my.vector <- 1:24
dim(my.vector)  <- c(3,4,2)
my.vector

ds1 <- as.data.frame ( baskets.team1 )
ds1

ds2 <- as.data.frame ( baskets.team )
ds2
str(ds1)
nrow(ds1)
length(ds1)


employee <- c("John Doe", "Peter Gynn", "Jolie Hope")
  salary <- c(21000, 23400, 26800)
  startdate <- as.Date(c("2010-11-1", "2008-3-25", "2007-3-14"))
  
empl.data<- data.frame(employee , salary,startdate, stringsAsFactors = TRUE)
str(empl.data)

colnames(empl.data)
names(empl.data)

#renmae variable name
colnames(empl.data)[3] <- "FirstDate"
names(empl.data)
rownames(empl.data)
rownames(empl.data)[1] <- "Test1"
empl.data
str(empl.data)

empl.data$salary
empl.data <- rbind(empl.data, c("Test1",2323, 2007-10-10))
