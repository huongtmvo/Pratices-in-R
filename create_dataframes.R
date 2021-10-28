# Create dataframe

## Step 1: Load packages
library(tidyverse)

## Step 2: Create data frame
### one of the most common is to create individual vectors of data and then combine them into a data frame using the `data.frame()` function.

names <- c("Huong", "Sara", "Amanda", "Tyler")
age <- c(30,35,42,26)

people <- data.frame(names, age)

## Step 3: inspect the data frame
### One common function you can use to preview the data is the `head()` function

head(people)
### the `str()` and `glimpse()` functions will both provide summaries of each column in your data arranged horizontally
str(people)
glimpse(people)

### use `colnames()` to get a list the column names in your data set
colnames(people)

# use `mutate()` if you wanted to create a new variable that would capture each person's age in twenty years
mutate(people, age_in_20 = age + 20)

## Step 4: Create another dataframe
### First, create a vector of any five different fruits

fruit <- c('watermelon','orange','pineapple','apple','kiwi')

# Now, create a new vector with a number representing your own personal rank for each fruit (1 to the fruit you like the most, and a 5 to the fruit you like the least)
ranking <- c(5,3,4,1,2)

# Finally, combine the two vectors into a data frame. 
fruit_ranks = data.frame(fruit,ranking)

# Inspect the new dataframe:
head(fruit_ranks)
colnames(fruit_ranks)








































