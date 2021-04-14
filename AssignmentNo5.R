#Basic statistical commands on the dataset using R and data exploration.
#Problem Statement: To execute basic statistical commands on the given dataset and explore the
#data to obtain useful information.

# Print the mtcars data set - which is built in dataset in R
mtcars

#Using question mark helps to get information about dataset
#?mtcars

Data_Cars <- mtcars # create a variable of the mtcars data set for better organization

# dim() can  be use to find the dimension of the data set
dim(Data_Cars)

# names() can be use to find the names of the variables from the data set
names(Data_Cars)

# rownames displays names of rows
rownames(Data_Cars)

# Using '$' sign between dataset name and one of the column name gives elements of that column as output
Data_Cars$cyl

# Sort function sort data in ascending order by default
sort(Data_Cars$cyl)

# Summary function can gives min, meadian, mean, 1st quantile(percentile), max quantile, 3rd quantile(percentile), these six statistical numbers of each vaiable
summary(Data_Cars)

# 5-num summary
fivenum(Data_Cars)

# max() and min() gives gives maximum and minimum value of specific variable as an output
max(Data_Cars$hp)
min(Data_Cars$hp)

# which.fun_name() gives positional index of fun output
which.max(Data_Cars$hp)
which.min(Data_Cars$hp)

# range() command gives minimum and maximum value of single variable
range(Data_Cars$hp)

# mean() can used to display average 
mean(Data_Cars$wt)

# median() fun can display middle value
median(Data_Cars$wt)

# mode gives value that appears most number of times
names(sort(-table(Data_Cars$wt)))[1]

# quantile() fun gives percentile
quantile(Data_Cars$wt)

# c() specifies which percentile you want
quantile(Data_Cars$wt, c(0.75))

# sd() is standard deviatin function , na.rm is removes missing values from input vector
sd(Data_Cars$hp, na.rm = FALSE)
