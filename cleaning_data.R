# Cleaning data in R

# Install the needed packages:
install.packages("here")
library("here")
install.packages("skimr")
library("skimr")
install.packages("janitor")
library("janitor")
install.packages("dplyr")
library("dplyr")
install.packages("palmerpenguins")
library("palmerpenguins")

skim_without_charts(penguins)
glimpse(penguins)
head(penguins)

# Select species column
penguins %>% 
  select(species)

# Select every columns but species
penguins %>% 
  select(-species)

# Rename column
penguins %>% 
  rename(island_new = island)

# rename column names to all lowercase
rename_with(penguins,tolower)

# clean names to ensure only letters, numbers and lowercase in column names
clean_names(penguins)


