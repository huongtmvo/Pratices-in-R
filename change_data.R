
#1. Install and load packages
install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")
library(tidyverse)
library(skimr)
library(janitor)

#2. Import data
hotel_bookings <- read_csv("hotel_bookings.csv")

#3. Get to know data
head(hotel_bookings)

# get summaries of each column in your data arranged horizontally
str(hotel_bookings)
glimpse(hotel_bookings)

# get column names
colnames(hotel_bookings)

# arrange the data by most lead time to least lead time in descending order
arrange(hotel_bookings,-lead_time )
#or arrange(hotel_bookings, desc(lead_time))

# arrange does not alter the existing data frame

# save new df 
hotel_bookings_v2 <-arrange(hotel_bookings, desc(lead_time))

# find out the maximum and minimum lead times without sorting the whole dataset
max(hotel_bookings$lead_time)
min(hotel_bookings$lead_time)

# find out the mean of lead times
mean(hotel_bookings$lead_time)

# find out average lead time before booking is for just city hotels
hotel_bookings_city <- filter(hotel_bookings, hotel_bookings$hotel=="City Hotel")
mean(hotel_bookings_city$lead_time)

# Create a hotel_summary df to provide information about minimum lead time,
#maximum lead time, mean lead times for each type of hotels

hotel_summary <- 
  hotel_bookings %>%
  group_by(hotel) %>%
  summarise(average_lead_time=mean(lead_time),
            min_lead_time=min(lead_time),
            max_lead_time=max(lead_time))

