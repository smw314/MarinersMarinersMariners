# Homework 2
library(dplyr)

## Construct a vector of length 100, containing 50 entries of each of your first and last names, in alternating order.
v <- rep(c("sam", "wirth"), times = 50)

## Use the following code to generate a dataframe of hits (h) and at-bats (ab) for our three person baseball team over 10 seasons (observations).

### Note that the floor() function is merely rounding the random numbers down to integers

set.seed(22)
player <- rep(c("Will", "Jordan", "Luke"), 10)
season_id <- rep(1:10, each = 3)
hits <- floor(runif(30, min = 20, max = 40))
ab <- floor(runif(30, min = 80, max = 115))

df <- data.frame(player, season_id, hits, ab)


# dplyr Exercises

## Create a new data frame called 'df_will' that has only the data for each of Will's seasonal performances
df_will <- data.frame("Will", season_id, hits, ab)


## Create a new data frame called 'df_hits' with only the seasons in which any player on our team had more than 30 hits
df_hits <- filter(df, hits > 30)


## Mutate a new variable called 'ba' into our original dataframe for batting average for each player in each season (hint: batting average = hits/at-bats in a given season)



## BONUS QUESTION:

## Read the documentation for summarize() and group_by(), or even better, read the section of 'R for Data Science' linked here:
### https://r4ds.had.co.nz/transform.html#grouped-summaries-with-summarise

### Create a dataframe that lists the average number of hits, at-bats, and average batting average for our team during each season (hint: think about your process here: what variable are you grouping by? what summary variables do you need?)


