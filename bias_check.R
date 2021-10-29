install.packages("SimDesign")
library(SimDesign)

# The bias function compare the actual outcomes to the predicted outcomes to determine 
# the average amount that the actual outcome is greater than the predicted outcomes
# An unbiaed model should have bias close to 0.

actual_temp <- c(70, 80, 75.6, 74.5, 70.4, 71.8)
predicted_temp <- c(68.7, 73.4, 75.6, 77, 78, 72.3)
bias(actual_temp,predicted_temp)

actual_sales <- c(120,190,140,134,200)
predicted_sales <- c(105,134,154,123,190)
bias(actual_sales,predicted_sales)