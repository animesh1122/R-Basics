#------------------------------
#Name:  Animesh Patel
#Date:  Feb-25, 2018
#Project: Chapter 5 
#------------------------------ 

#Getting Started with Reading
# and Writing 

#Assigning a value to a character vector
x <- "Hello world!"
is.character(x)

length(x)
nchar(x)

# Creating a character vector with more
# than one element

y <- c("Hello", "World", "I") 
length(y)
nchar(y) #Give lenght of each text/elements 

# Extracting a subset of a vector | subsetting

letters
LETTERS

letters[10]
letters[c(10,11,12)]
letters[c(10,11,12, 27)]
loc <- c(1,5,10)
LETTERS[loc]

LETTERS[10:20]

#to get last elements - TAIL 

tail(letters) #default - 6
tail(letters,5)
head(letters,5)


#Naming the values in your vectors 
islands
str(islands)

islands [3]
islands ["Asia"]
islands [c("Asia", "Australia", "Africa")] 

#To get Names:
names(islands)
names(islands)[1:6]
names(sort(islands, decreasing = TRUE)[1:6])

# Creating and assigning named vectors
month.name

month.days <- c(31,28,31,30,31,30,31,31,30,31,30,31)
length(month.days)

names(month.days) <- month.name
month.days

names(sort(month.days,decreasing = FALSE))
names(sort(month.days,decreasing = TRUE))

month.days[month.days ==31 ]
names(month.days[month.days ==31 ])

# Manipulating Text
#Concatination - paste()
#Spliting - strsplit()

pangram <- "The quick brown fox jumps over the lazy dog"

strsplit(pangram," ")
strsplit(pangram,"") #No space

words <- strsplit(pangram," ")
str(words)
is.list (words)
words <- strsplit(pangram," ")
#extracting vecotr from LIST by [[ ]]
word1 <- words[[1]]
is.vector(word1)

unique(word1)
unique(tolower(word1))   
unique(toupper(word1))

word2 <- strsplit(pangram, "T")
word2 
str(word2)
# Concatenating text

paste("The", "quick", "brown", "fox" ) #sep - default is space 
paste("The", "quick", "brown", "fox", sep = "-")

paste(c("The", "quick", "brown", "fox"), c("jump", "quick"))

paste(word1)
paste(word1, collapse = " ")
paste(word1, collapse = "+")

paste("Sample", 1:5, "Example")

paste(letters[1:10],word1,sep = "+", collapse = "___")
paste(letters[1:26],word1,sep = "+", collapse = "___")

# Sorting text
sort(letters, decreasing = TRUE)
sort(word1, decreasing = TRUE)
sort(word1)

#Finding text inside text
#1. Searching for individual words
state.name
#1.a Searching by position - substr
substr(state.name,start = 2, stop=7)
substr(state.name,start = 1, stop=3)
head(substr(state.name,start = 1, stop=3))
#1.b Searching by pattern - grep
#From UNIX - Global Regular Expression Print - GREP 

grep("New" ,state.name) # -> give position numbers 
grep("new" ,state.name) # -> case is lower
grep("new" ,state.name, ignore.case = TRUE) # -> case is lower
grep("new" ,tolower(state.name)) # -> case is lower

grep('New',state.name,ignore.case = TRUE , value= TRUE) # gives directly value
grep('New',state.name,ignore.case = TRUE )


#2. Searching for multiple words
state.name[grep(" ", state.name)]
grep(" ", state.name,value = TRUE)

grep("East", state.name,value = TRUE)
grep("Yo|Jer|sy", state.name,value = TRUE) # Multiple strings by | 


#Substituting text


#Revving up with regular expressions 
rwords <- c("bach", "back", "beech", "beach", "black")
grep("beach|beech" , rwords)
rwords[grep("beach|beech" , rwords)]
rwords[grep("be(a|e)ch" , rwords)]
# to extract bach and beech but not beach:
rwords[grep("b(e*|*a)ch" , rwords)]

#***********************************
# Factoring in Factors
#***********************************
# R has a special data structure for categorical data, called factors
# Factor vectors behave like CHAR as well as Numeric
# factor(x , levels = , labels = ) x - input vector() levels - Input, label-output

directions <- c("North", "East", "South", "South")
factor(directions)

factor(directions, levels = c("East", "North", "South", "West"))
factor(directions, levels = c("East", "North", "South", "West"),
                    label = c("E","N","S","W"))
#Convert it to Num or char -functions as.character() or as.numeric().
str(directions)
as.character(directions)

as.numeric(directions)

numbers <- factor(c(9, 8, 10, 8, 9))
as.numeric(numbers)
str(numbers)
as.numeric(as.character(numbers))

str(state.region)
levels(state.region)
nlevels(state.region)
levels(state.region)[2:3]

#Distinguishing data types
# - > Summary
# Summarizing categorical data -> COUNTING / frequency 
# Use TABLE () function 
a <- table(state.region)

#Create ORDERED Factor 
# 
status <- c("Lo", "Hi", "Med", "Med", "Hi")
order_status <- factor(status,
                       levels = c("Lo","Med","Hi"),
                       ordered = TRUE)
is.ordered(order_status)
levels(order_status)

table(status)
table(order_status)





