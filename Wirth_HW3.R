#For this model, I aimed to find a possible correlation between wOBA and barrel % for pitchers with more than 250 batters faced in the 2021 regular season.
#All data is from Baseball Savant
library(utils)
library(ggplot2)
library(tidyverse)

BA_plot <- read_excel("Desktop/Georgetown/Clubs/Baseball Analytics/Education/wOBA_&_barrel3.xlsx")

ggplot(BA_plot, aes(x = woba, y = barrel_batted_rate)) + geom_point() + geom_smooth(method = lm, se = FALSE)

Lm <- lm(BA_plot$barrel_batted_rate ~ BA_plot$woba)
summary(Lm)

#p-value:<2e-16
#multiple R-squared:  0.2166
#adjusted R-squared:  0.2154

#While the p-value is low, the .21 R-squared value indicates low correlation beteen pitcher wOBA and barrel %.