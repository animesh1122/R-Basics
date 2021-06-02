#------------------------------
#Name:  Animesh Patel
#Date:  Feb-25, 2020
#Project: Chapter 3 
#------------------------------

# Vactorization 

vector1 <- c(1,2,3,4)

basket.ball <- c(12,14,54)
#Get Sum
sum(basket.ball)
min(basket.ball)
max(basket.ball)
mean(basket.ball)

#Two Vecotor - Connecting
firstname <- c("Kamlesh", "ANimesh", "Vaishali")
lastname <- c("Patel","Patel","Patel")

Fullname <- paste(firstname, lastname)

#Checking not aligned vector 
firstname1 <- c("Test", "Kamlesh", "ANimesh", "Vaishali")
lastname1 <- c("Shah","Patel","Patel")

Fullname1 <- paste(firstname1, lastname1)
#Fullname1 <- firstname1 + lastname1

print(Fullname1)

#Arithmetic Operation b/w 2 vectors
a<- c(1,2,3, 10)
b<- c(1,2,3)
c <- a+b
print(c)

d <- 5 * a 
print(d)

print(x="Hello")
#print(x)

print(digits = 2 , x = 11/7)

print.default(x=11/7)
print(x=11/7)

#TO get Help
?paste()

paste(firstname, lastname, sep = "*")

#savehistory(file="Chapter3.Rhistory")
#loadhistory("Chapter3.Rhistory")

.kamlesh <- c(1)
kamlesh1_. <- c(1)

#USE Long and Descriptive Name for vectors

test1 <- c("this is a long +
  string")
print(test1)

baskets.of.Geraldine <-
  c(5, 3, 2, 2, 12, 9)
Intro <- "It is amazing! The All Star Grannies scored
a total of"
Outro <- "baskets in the last six games!"
Total.baskets <- basket.ball +
  baskets.of.Geraldine
Text <- paste(Intro,
              sum(Total.baskets),
              Outro)
print (Text)
#vs
cat(Text) # Like Print but takes less space

cat("This is car\n which is red.")
cat("This is car,
+ which is red.")




