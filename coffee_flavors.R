library(plyr)
flavor_df <- read_csv("/Volumes/GoogleDrive/My Drive/R_practices/Course 7/flavors_of_cacao.csv")
head(flavor_df)
colnames(flavor_df)

# Review the structure of the dataframe
str(flavor_df)

# Rename the column Company...Maker.if.known. as Brand
flavor_df %>% 
  dplyr::rename(Brand = "Company \n(Maker-if known)")
head(flavor_df)        

# Create the new data frame with just Rating, Cocoa.Percent and Company.Location
trimmed_flavors_df <- flavor_df %>% 
  select(Rating,Cocoa.Percent,Company.Location)

# Find the maximum Rating of your data
trimmed_flavors_df %>% 
  summarize(max(Rating))

# Filter the data to include data with at least 70% of cocoa percent and Rating of at least 3.5
filtered_data <- trimmed_flavors_df %>% 
  filter(Cocoa.Percent >= 70%,Rating >= 3.5)

# Create a bar chart with Company.Location on the x_axis
ggplot(data = filtered_data) +
  geom_bar(maping = aes(x = Company.Location))

# Highlight each bar with fill of Rating
ggplot(data = filtered_data)+
  geom_bar(mapping = aes(x = Company.Location,fill = Rating))

# Create a chocolate bar chart with facet wraps for Cocoa.Percent
ggplot(data = filtered_data)+
  geom_bar(mapping = aes(x = Cocoa.Percent)) +
  facet_wrap(~Cocoa.Percent)

# Create a scatter plot with Cocoa.Percent and Rating with title "Best Chocolates" and dave the plot as 'chocolate.jpeg'
ggplot(data = filtered_data) +
  geom_point(mapping = aes(x = Cocoa.Percent,y = Rating))+
  labs(title = 'Best chocolates')+
  ggsave('chocolate.jpeg')


  


