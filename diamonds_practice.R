library(ggplot2)
data("diamonds")
View(diamonds)

# To print the first 6 rows of the dataset
head(diamonds)

# to get the structure of the dataframe, use str()
str(diamonds)

# To get the column names of the dataframe, use colnames()
colnames(diamonds)

# Use mutate() function to make changes to dataframe
# create a new col name carat_2 
library(tidyverse)
mutate(diamonds,carat_2=carat*100)

