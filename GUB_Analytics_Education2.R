library(dplyr)

df <- mtcars

#filter(data, ...{this is the space for a bunch of statements. If those statements return TRUE, the row (observation) is kept, if not, it's eliminated})

big_engines <- filter(df, cyl == 8)
efficient <- filter(df, mpg > mean(mpg))

big_efficient_engines <- filter(df, cyl>6, mpg > mean(mpg))

#mutate(data, ... new_variable_name = statement // that creates a new variable)

big_engines <- mutate(df, efficiency = wt/mpg, mpg_per_cyl = mpg/cyl)

df$efficiency_2 <- df$wt/df$mpg

#summarize(data, ...new_variable_name = )

df_summary <- summarize (df, avg_mpg = mean(mpg), avg_cyl = mean(cyl), tot_hp = sum(hp), avg_weight = mean(wt))

x <- 1:100
y <- 2:101
z <- rep("baseball", 100)
df_funny <- data.frame(x, y, z)
