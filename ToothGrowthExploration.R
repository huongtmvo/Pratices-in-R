data("ToothGrowth")
View(ToothGrowth)

# Filter the data to include only the observation with dose =0.5
filtered_tg = filter(ToothGrowth,dose==0.5)
View(filtered_tg)

# Arrange the filtered data by length of tooth in ascending order
arrange(filtered_tg,len)

# Use nested function to filter the data with dose =0.5
# and sort it in ascending order by length of tooth
arrange(filter(ToothGrowth,dose==0.5),len)

# Use pipes to do the same actions
filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  arrange(len)

# Use pipe to compute average tooth length 
# for each supplement used when dose is 05.
filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  group_by(supp)  %>% 
  summarize(mean_len = mean(len,na.rm=T),.group ="drop")
  
# Use pipe to filter data with Orange Juice supplement
# and length of tooth is between 6.5 and 9.4
filtered_toothgrowth <- ToothGrowth %>% 
  filter(supp=='OJ') %>% 
  filter(len > 6.5 & len <9.4)


