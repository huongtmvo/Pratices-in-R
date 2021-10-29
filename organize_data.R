library(tidyverse)
library('palmerpenguins')

# Sort penguins data by ascending order of bill-length
penguins %>% arrange(bill_length_mm)

# Sort penguins data by descending order of bill_length
penguins %>% arrange(-bill_length_mm)

# Save the new data in a new dataframe
penguins2 <- penguins %>%  arrange(-bill_depth_mm)
View(penguins2)

# group the penguins data by island and calculate the mean bill length
penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarize(mean_bill_length_mm = mean(bill_length_mm))

# find the maximum bill length by island
penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarize(max_bill_length_mm = max(bill_length_mm))

# Group by island and species and find both the mean and the max bill length
penguins %>% 
  group_by(species,island) %>% 
  drop_na() %>% 
  summarize(max_bl = max(bill_length_mm),min_bl = min(bill_length_mm))

# Filter data of only Adelie penguins
penguins %>% filter(species == "Adelie") 


  