#fantasy football
#week 16 2019
library(utils)
library(ggplot2)
library(tidyverse)
library(car)

ESPN_proj <- read.csv("/Users/samwirth/Desktop/Georgetown/Clubs/Baseball Analytics/Education/2019FantasyESPN.csv")

#ESPN projection performance
ggplot(ESPN_proj, aes(x=Proj, y=Actual)) + geom_point() + geom_smooth(method = lm, se = FALSE)

Lm <- lm(ESPN_proj$Actual ~ ESPN_proj$Proj)
summary(Lm)

#For players >10 pts
ESPN_proj %>%
  mutate(Over10 = ifelse(Actual > 10, 1, 0)) -> ESPN_proj

#Filter options
ESPN_proj10 <- filter(ESPN_proj, Over10 == 1)
ESPN_proj2 <- subset(ESPN_proj, Actual > 10)
ESPN_proj3 <- filter(ESPN_proj, Actual > 10)
ESPN_WRs <- filter(ESPN_proj10, Pos == "WR")
View(ESPN_proj10)

rm(ESPN_proj2, ESPN_proj3)

#Test
ggplot(ESPN_proj10, aes(x=Proj, y=Actual)) + geom_point() + geom_smooth(method = lm, se = FALSE)

Lm <- lm(ESPN_proj10$Actual ~ ESPN_proj10$Proj)
summary(Lm)

ggplot(ESPN_WRs, aes(x=Proj, y=Actual)) + geom_point() + geom_smooth(method = lm, se = FALSE)

Lm <- lm(ESPN_WRs$Actual ~ ESPN_WRs$Proj)
summary(Lm)
