# Manually insert the data:

id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, name, job_title)
print(employee)

# separate employee names by first names and last names (does not change the original df)
separate(employee,name,into=c('first_name','last_name'),sep = ' ')

# unite functon
unite(employee,'id_and_name',id,name,sep = ' ')

# Another example of unite area_code and phone_num to get "phone_number", knowing they're separed by -
unite(customers,'phone_number',area_code,phone_num,sep='-')

print(employee)

# View the penguins df
View(penguins)
# Add a new column body_mass_kg
penguins %>% 
  mutate(body_mass_kg = body_mass_g/1000,flipper_length_m = flipper_length_mm/1000)



