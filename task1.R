library(ggplot2)
library(dplyr)

age_group_city_distribution <- data %>%
  +     group_by(state, age_group) %>%
  +     summarise(population = sum(population))

# Create a bar chart for age group distribution by city
> ggplot(age_group_city_distribution, aes(x = age_group, y = population, fill = state)) +
  +     geom_bar(stat = "identity", position = "dodge") +
  +     labs(title = "Population Distribution by Age Group and City in Germany",
             +          x = "Age Group",
             +          y = "Population",
             +          fill = "City") +
  +     theme_minimal() +
  +     theme(axis.text.x = element_text(angle = 45, hjust = 1))

   
   gender_city_distribution <- data %>%
  +     group_by(state, gender) %>%
  +     summarise(population = sum(population))
   # Create a bar chart for gender distribution by city
    ggplot(gender_city_distribution, aes(x = gender, y = population, fill = state)) +
     +     geom_bar(stat = "identity", position = "dodge") +
     +     labs(title = "Population Distribution by Gender and City in Germany",
                +          x = "Gender",
                +          y = "Population",
                +          fill = "City") +
     +     theme_minimal() +
     +     theme(axis.text.x = element_text(angle = 45, hjust = 1))
  
