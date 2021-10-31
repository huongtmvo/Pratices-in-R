# load data
hotel_bookings <- read.csv("hotel_bookings.csv")

# preview the data
head(hotel_bookings)

# Get the names of the columns in the dataset
colnames(hotel_bookings)

library(ggplot2)

# Create a scatter graph to show relationship between children and lead time
ggplot(data=hotel_bookings) + geom_point(mapping=aes(x=lead_time,y=children))

# Create a scatter graph to show relationship between stay in weekend nights and children
ggplot(data=hotel_bookings) + geom_point(mapping=aes(x=stays_in_weekend_nights,y=children))
