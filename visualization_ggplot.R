library('ggplot2')
library('palmerpenguins')

View(penguins)

# Make a scatter plot to display relationship between flipper length and body mass
ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g))

# Make a scatter plot to display relationship between bill length and bill depth
ggplot(data=penguins) + geom_point(mapping = aes(bill_length_mm,bill_depth_mm))

# To learn more about a fuction
?geom_point