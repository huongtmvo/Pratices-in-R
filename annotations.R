library(ggplot2)
library(palmerpenguins)

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm,y = body_mass_g,color= species))+
  labs(title = "Palmer Penguins: Body mass vs. Flipper length",subtitle='Sample of three penguin species',
       caption="Collection by Dr.Kristen Gorman") + 
  annotate("text",x=220,y=3500,label='The Gentoos are the largest',color='purple',
           fontface='bold',size=4.5,angle=25)

# Use variable to name the graph
p <- ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm,y = body_mass_g,color= species))+
  labs(title = "Palmer Penguins: Body mass vs. Flipper length",subtitle='Sample of three penguin species',
       caption="Collection by Dr.Kristen Gorman")

p + annotate("text",x=220,y=3500,label='The Gentoos are the largest')

