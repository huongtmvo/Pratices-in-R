hotel_bookings <- read.csv("hotel_bookings.csv")
head(hotel_bookings)
colnames(hotel_bookings)
library(ggplot2)

# Scatter plot to show relationship between lead time and travelling with children
ggplot(data = hotel_bookings) + 
  geom_point(mapping = aes(x = lead_time,y = children))

# Create a bar chart showing each hotel type and market segment
ggplot(data = hotel_bookings) + 
  geom_bar(mapping = aes(x = hotel,fill= market_segment))

# Create a separate graph for each market segment
ggplot(data = hotel_bookings) + 
  geom_bar(mapping = aes(x = hotel)) + 
  facet_wrap(~market_segment)

library(tidyverse)

# Create a plot that shows the relationship between lead time and guests traveling with children 
# for online bookings at city hotels
# First, filter data to include only data of "City Hotel" with "Online TA" as maket segment
onlineta_city_hotels <- filter(hotel_bookings,
                               (hotel == 'City Hotel' & 
                                hotel_bookings$market_segment == 'Online TA'))
# Use pipes to write similar code
onlineta_city_hotels_v2 <- hotel_bookings %>% 
  filter(hotel == 'City Hotel') %>% 
  filter(market_segment == 'Online TA')
# mapping the data
ggplot(data = onlineta_city_hotels) +
  geom_point(mapping = aes(x = lead_time,y = children))

  

