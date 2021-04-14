#Title: Data Types , Graphics and Control Structures in R.
#Problem Statement: To study and practice various commands using different Data Types ,
#  Graphics and Control Structures on R tool and study and practice of various control structures.

############################## A #############################################
# 1. Operations on vector data typpe
# Vector of strings
fruits <- c("banana", "apple", "orange",, "mango", "lemon")

# Print fruits
fruits

# Access the 3rd item (banana)
fruits[3]

# Change "banana" to "pear"
fruits[1] <- "pear"

# Access the first and third item (banana and orange)
fruits[c(1, 3)]

# Access all items except for the first item
fruits[c(-1)]

# Print length of vector
length(fruits)

# Sorting vector
sort(fruits)

# Vector with numerical values in a sequence
num <- 1:10
num

# Vector of logical values
log_values <- c(TRUE, FALSE, TRUE, FALSE)
log_values

# repeating each value of vector given number of times
repeat_each <- rep(c(1,2,3), each = 3)
repeat_each

# repeating whole vector seq given number of times
repeat_times <- rep(c(1,2,3), times = 3)
repeat_times

# repeating each value of vector independently
repeat_indepent <- rep(c(1,2,3), times = c(5,2,1))
repeat_indepent




# 2. Operations on list data typpe
# List of strings
thislist <- list("apple", "banana", "cherry")

# Print the list
thislist

# accessing single value of list
thislist[1]

# changing value of item at a specified index
thislist[1] <- "blackcurrant"


# Prints length of the list
length(thislist)

# Checks if apple is present or not
"apple" %in% thislist

# Appending new item
append(thislist, "orange")

# Appending item at index 2 i.e after 1st 2 items
append(thislist, "pineapple", after = 2)

# Creating new list with removing 1st item
newlist <- thislist[-1]

# Print the new list
newlist

# Prints items in range of 2:5 i.e 2nd,3rd,4th and 5th
(thislist)[2:5]

# List can be printed using loops
for (x in thislist) {
  print(x)
}

# Joining 2 lists and create 3rd 
list1 <- list("a", "b", "c")
list2 <- list(1,2,3)
list3 <- c(list1,list2)

list3

# 3. Operations on matrix data type
# Create a matrix
thismatrix <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)

# Print the matrix
thismatrix

# Create a matrix
thismatrix1 <- matrix(c("apple", "banana", "cherry", "orange","papaya","peach"), nrow = 3, ncol = 2)
thismatrix1

# Accessing mathix items, here 1 specifies row no. and 2 column no.
thismatrix[1, 2]

# Accessing whole row
thismatrix[2,]


# Accessing whole column
thismatrix[,2]

# Accessing more than one row
thismatrix[c(1,2),]

# Accessing more than i column
thismatrix[,c(1,2)]

#Remove the first row and the first column
thismatrix <- thismatrix[-c(1), -c(1)]

thismatrix

# cbind can add new column to matrix
newmatrix <- cbind(thismatrix1, c("strawberry", "blueberry", "raspberry"))

# rbind can add new row to matrix
newmatrix <- rbind(thismatrix1, c("pineapple", "watermelon", "custordapple"))

# Print the new matrix
newmatrix

# Checks if an item exists
"apple" %in% thismatrix1

# used to find dimensions
dim(thismatrix)

# used to find lenth
length(thismatrix)

# A matrix items can be access using loops
for (rows in 1:nrow(thismatrix)) {
  for (columns in 1:ncol(thismatrix)) {
    print(thismatrix[rows, columns])
  }
}

# Combine matrices
Matrix1 <- matrix(c("apple", "banana", "cherry", "grape"), nrow = 2, ncol = 2)
Matrix2 <- matrix(c("orange", "mango", "pineapple", "watermelon"), nrow = 2, ncol = 2)

# Adding it as a rows
Matrix_Combined <- rbind(Matrix1, Matrix2)
Matrix_Combined

# Adding it as a columns
Matrix_Combined <- cbind(Matrix1, Matrix2)
Matrix_Combined

# 4. Operations on Arrays  data type
# An array with one dimension with values ranging from 1 to 24
thisarray <- c(1:24)
thisarray

# An array with more than one dimension
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray

# Accessing an array elmts
multiarray[2, 3, 2]

# Access all the items from the first row from matrix one
multiarray[c(1),,1]

# Access all the items from the first column from matrix one
multiarray[,c(1),1]

# Checks if an item is exists
2 %in% multiarray

# Display dimensions
dim(multiarray)

# Display length
length(multiarray)

# Accessing array using loops
for(x in multiarray){
  print(x)
}

# 5. Operations on Factors  data type
# Create a factor
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

# Print the factor
music_genre

# To only print levels
levels(music_genre)

# To print factor length
length(music_genre)

# Accessing item at index 3
music_genre[3]

# Item can be change 
music_genre[3] <- "Pop"

# Item value cannot be replaced by any value which does not exist in factor level
music_genre[3] <- "Opera" # Will give an error

# If item exist in levels of factor it can be replace 
levels = c("Classic", "Jazz", "Pop", "Rock", "Opera"))

music_genre[3] <- "Opera"


# 6. Operations on Data Frames data type
 Create a data frame
Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

# Print the data frame
Data_Frame

# Summarize data frame
summary(Data_Frame)

#We can use single brackets [ ], double brackets [[ ]] or $ to access columns from a data frame
Data_Frame[1]

Data_Frame[["Training"]]

Data_Frame$Training

# Add a new row using rbind
New_row_DF <- rbind(Data_Frame, c("Strength", 110, 110))

# Add a new column using cbind
New_col_DF <- cbind(Data_Frame, Steps = c(1000, 6000, 2000))

# Print the new row
New_row_DF

# Remove the first row and column
Data_Frame_New <- Data_Frame[-c(1), -c(1)]

# Display dimensions
dim(Data_Frame)

# ncol and nrow gives no of rows and columns of data frame respectively
ncol(Data_Frame)
nrow(Data_Frame)

# length of data frame (no of fields)
length(Data_Frame)

#Use the rbind() function to combine two or more data frames in R vertically:

Data_Frame2 <- data.frame (
  Training = c("Stamina", "Stamina", "Strength"),
  Pulse = c(140, 150, 160),
  Duration = c(30, 30, 20)
)

New_Data_Frame <- rbind(Data_Frame, Data_Frame2)

Data_Frame4 <- data.frame (
  Steps = c(3000, 6000, 2000),
  Calories = c(300, 400, 300)
)

New_Data_Frame1 <- cbind(Data_Frame, Data_Frame4)
New_Data_Frame

######################################### B #######################################3333333

# 1. Pie charts operations
# pie() function is use to draw pie chart
pie(c(10,20,40,30))

# Create a vector of pies
x <- c(10,20,30,40)

# Display the pie chart and start the first pie at 90 degrees
pie(x, init.angle = 90)

# Create a vector of labels
mylabel <- c("Apples", "Bananas", "Cherries", "Dates")

# Create a vector of colors
colors <- c("blue", "yellow", "green", "black")

# Display the pie chart with colors
pie(x, label = mylabel, main = "Fruits", col = colors)

# Display the explanation box
legend("bottomright", mylabel, fill = colors)
#The legend can be positioned as either:bottomright, bottom, bottomleft, left, topleft, top, topright, right, center

#2. Bar charts operations

#Use the barplot() function to draw a vertical bar chart:
# x-axis values
x <- c("A", "B", "C", "D")

# y-axis values
y <- c(2, 4, 6, 8)

barplot(y, names.arg = x)

# cols attribute can be used to change color of bers
barplot(y, names.arg = x, col = "yellow")

# Density attribute is use to change bar texture
barplot(y, names.arg = x, density = 10)

# Bar width can be provide to each bar
barplot(y, names.arg = x, width = c(1,2,3,4))

# Horizontal bars by default bars are vertical
barplot(y, names.arg = x, horiz = TRUE)

# 3. Boxplot operations


# 5. Line Graph
# plotting simple line graph using type l
plot(1:10, type="l", col="blue")

# lwd provides line width
plot(1:10, type="l", lwd=2)

# lty can display value of lty is between 0 to 6
plot(1:10, type="l", lwd=5, lty=3)


# Multiline graph
bitmap(file="out.png")

line1 <- c(1,2,3,4,5,10)
line2 <- c(2,5,7,8,9,10)
line3 <- c(3,5,8,9)
plot(line1, type = "l", col = "blue")
lines(line2, type="l", col = "red")
lines(line3,type="l", col = "yellow")


# 6. Scatterplots
# Simple scatterplot
x <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y <- c(99,86,87,88,111,103,87,94,78,77,85,86)

plot(x, y)

# day one, the age and speed of 12 cars:
x1 <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y1 <- c(99,86,87,88,111,103,87,94,78,77,85,86)

# day two, the age and speed of 15 cars:
x2 <- c(2,2,8,1,15,8,12,9,7,3,11,4,7,14,12)
y2 <- c(100,105,84,105,90,99,90,95,94,100,79,112,91,80,85)

plot(x1, y1, main="Observation of Cars", xlab="Car age", ylab="Car speed", col="red", cex=2)
points(x2, y2, col="blue", cex=2)

########################################## C ##############################################
# Control structure in R

# 1.If,els :
a = 2
b = 5

 if (b > a) {
  print("b is greater than a")
}
 else{
  print("a is greater than b")
}

if (b > a) {
  print("b is greater than a")
} else if (a == b) {
  print("a and b are equal")
} else {
  print("a is greater than b")
}
# 2. Vectorization with ifelse:
 ifelse(a <= b,"a is greater than b","b is greater than a")

# 3. Other valid ways of if else:
a <- if (a < 30){
  30
}else{
  10
  }

# 4. For loop
for (x in 1:10) {
  print(x)
}
# 5. While loop:
i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
}
# 6. Repeat :
a = 10 
b = 20
repeat{
 if(a==b){
 break
 }
print(a)
 a = a + 2
}

# 7. Next :
i <- 0
while (i < 6) {
  i <- i + 1
  if (i == 3) {
    next
  }
  print(i)
}
# 8. Break
fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  if (x == "cherry") {
    break
  }
  print(x)
}

