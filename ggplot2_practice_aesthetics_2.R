hotel_bookings <- read.csv("hotel_bookings.csv")
head(hotel_bookings)
colnames(hotel_bookings)

# Bar chart to show the number of transactions occuring on different distribution channel
ggplot(data = hotel_bookings)+
  geom_bar(mapping = aes(x=distribution_channel))

# Bar chart to show the proportion of deposit types for each distribution channels' types
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel,fill = deposit_type))

# Bar chart to show proportion of each market segment for each distribution channels' types
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel,fill = market_segment))

# Create separate graph for each deposit type
ggplot(data = hotel_bookings) + 
  geom_bar(mapping = aes(x = distribution_channel)) + 
  facet_wrap(~deposit_type)
# Make the x-label easier to read by rotating them 45 degree
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))

# Create a separate chart for market segment
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel))+
  facet_wrap(~market_segment) + 
  theme(axis.text.x = element_text(angle = 45))

# Put all of those in one chart and explore the differences by market segment and deposit type
ggplot(data = hotel_bookings) + 
  geom_bar(mapping = aes(x = distribution_channel))+
  facet_wrap(~deposit_type ~market_segment) + 
  theme(axis.text.x = element_text(angle = 45))







