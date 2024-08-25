library(ggplot2)
library(dplyr)

data <- read.csv('C:\\Users\\lenovo\\Downloads\\prodigy\\task1\\demographics_de.csv', sep = ",")

 if (ncol(data) == 1) {+     data <- separate(data, col = 1, into = c("state", "gender", "age_group", "population"), sep = ",")
    + }
data$population <- as.numeric(data$population)

# Create a bar chart for age group distribution by city

age_group_city_distribution <- data %>%
  +     group_by(state, age_group) %>%
  +     summarise(population = sum(population))

ggplot(age_group_city_distribution, aes(x = age_group, y = population, fill = state)) +
  +     geom_bar(stat = "identity", position = "dodge") +
  +     labs(title = "Population Distribution by Age Group and City in Germany",
             +          x = "Age Group",
             +          y = "Population",
             +          fill = "City") +
  +     theme_minimal() +
  +     theme(axis.text.x = element_text(angle = 45, hjust = 1))
# Create a bar chart for gender distribution by city
 ggplot(gender_city_distribution, aes(x = gender, y = population, fill = state)) +
  +     geom_bar(stat = "identity", position = "dodge") +
  +     labs(title = "Population Distribution by Gender and City in Germany",
             +          x = "Gender",
             +          y = "Population",
             +          fill = "City") +
  +     theme_minimal() +
  +     theme(axis.text.x = element_text(angle = 45, hjust = 1))996
  