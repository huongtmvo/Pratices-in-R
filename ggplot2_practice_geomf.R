
library(ggplot2)
library(palmerpenguins)

# Scatter plot between flipper length and body mass
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

# Smooth line to respresent the data
ggplot(data=penguins)+
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g))

# Add 2 geoms on the same map: scatter plot and smooth line
ggplot(data=penguins)+
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

# Draw a different line with different line type for each species
ggplot(data=penguins)+
  geom_smooth(mapping=aes(x=flipper_length_mm,y=body_mass_g,linetype=species))

# Use geom_jitter creates a scatter plot and then adds a small amount of random noise to each point in the plot.
# deal with over_plotting,make points easier to find
ggplot(data=penguins)+
  geom_jitter(mapping=aes(x=flipper_length_mm,y=body_mass_g))

# Use diamond data set
View(diamonds)
# Create a bar chart based on cut, color will change the outer line of each bar
ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut,color=cut))

# Change the color of each bar
ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut,fill=cut))

# Map fill to another variable, geom_bar will display a stacked bar chart
ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut,fill=clarity))












