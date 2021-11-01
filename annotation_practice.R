hotel_bookings <- read.csv("hotel_bookings.csv")
head(hotel_bookings)
colnames(hotel_bookings)

library(ggplot2)
library(tidyverse)

# Create a visualization that compares market segments between city hotels and resort hotels
ggplot(data=hotel_bookings)+
  geom_bar(mapping=aes(x=market_segment))+
  facet_wrap(~hotel)+
  labs(title="Market segments between city hotels and resort hotels")

mindate <- min(hotel_bookings$arrival_date_year)
maxdate <- max(hotel_bookings$arrival_date_year)

# Use paste0() function to get the newly created variable into your new labels
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) + 
  facet_wrap(~hotel) + 
  theme(axis.text.x = element_text(angle = 45))+
  labs(title = 'Comparison of market segments by hotel types for hotel bookings',
       subtitle = paste0("Data from:",mindate,"to",maxdate))

# Switch the `subtitle`  to a `caption` which will appear in the bottom right corner instead
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       caption=paste0("Data from: ", mindate, " to ", maxdate))

# Clean up x and y labels
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       caption=paste0("Data from: ", mindate, " to ", maxdate),
       x = 'Market segments',
       y = 'Number of bookings')

# Save the latest chart
ggsave('hotel_booking_chart.png', width=7,height=7)


  


