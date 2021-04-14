#Title: Data Types , Graphics and Control Structures in R.
#Problem Statement: To study and practice various commands using different Data Types ,
#  Graphics and Control Structures on R tool and study and practice of various control structures.


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


# 6. Operations on Data Frames data type