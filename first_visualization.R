install.packages('ggplot2')
install.packages('palmerpenguins')
library(ggplot2)
library(palmerpenguins)

# Examine the data
data("penguins")
View(penguins)

# Use scatter plot to plot the relationship between body mass and flipper length
ggplot(data=penguins) + geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

# Different syntax
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) +  geom_point()



