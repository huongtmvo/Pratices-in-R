#1. install the needed packages:
install.packages('tidyverse')
install.packages('skimr')
install.packages('janitor')

# load the libraries
library(tidyver)
library(skimr)
library(janitor)

#2. Import data
booking_df <- read_csv(hotel_bookings.csv)

#3.Getting to know the data
head(booking_df)

#summarize/preview data with str() and glimpse()
str(booking_df)
glimpse(booking_df)

# view column names
colnames(booking_df)

# skimr package contains more advanced function of for summarizing and exploring data
skim_without_charts(booking_df)

#4. cleaning the data
# Create a new df with only variables: 'hotel','is_canceled','lead_time'
trimmed_df <- booking_df %>% 
  select(hotel,is_canceled,lead_time)
head(trimmed_df)

# Rename the column hotel to hotel_type to
trimmed_df %>% 
  rename(hotel_type=hotel)

# Combine the arrival month and year into a column
example_df <- booking_df %>% 
  select(arrival_date_year,arrival_date_month) %>% 
  unite(arrival_month_year,c("arrival_date_month","arrival_date_year"),sep=' ')

# Create a new column 'guests' to be the sum of all adults, children,babies on the reservation
example_df <- booking_df %>% 
  mutate(guest = adults + children + babies)

# Calculate the total number of canceled bookings and average lead time
example_df <- booking_df %>% 
  summarize(number_canceled = sum(is_canceled),average_lead_time = mean(lead_time))
head(example_df)

  

