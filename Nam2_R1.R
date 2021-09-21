library(nycflights13)
library(ggplot2)
library(dplyr)
data(flights)
head(flights)
names(flights)
glimpse(flights)
flight_sub <- flights %>% 
  filter(carrier == "AS")
ggplot(data = flight_sub, mapping = aes(x = dep_delay, y = arr_delay))+ 
  geom_point()

early_january_weather <- weather %>% 
  filter(origin == "EWR" & month == 1 & day <= 15)

ggplot(early_january_weather, aes(x = time_hour, y=temp)) +
  geom_line()

ggplot(data = weather, mapping = aes(x = temp)) +
  geom_histogram(bins = 40, color = "white", fill = "pink")
ggplot(data = weather, mapping = aes(x = month, y = temp)) +
  geom_boxplot()
ggplot(data = weather, mapping = aes(x = factor(month), y = temp)) +
  geom_boxplot()
ggplot(data = flights, mapping = aes(x = carrier)) +
  geom_bar(fill="blue")
