library(ggplot2)
library(palmerpenguins)

# Scatter plot with different colors for different species
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species))

# Scatter plot with different shapes for different species
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,shape=species))

# Mapping both colors and shapes to species
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,shape=species,color=species))

# Mapping color, shapes and size to species
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,shape=species,color=species,size=species))

# Use alpha to illustrate different transparency levels to different species
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,alpha=species))

# change all data points to purple without mapping it
ggplot(data=penguins) + 
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g),color='purple')

