## reading csv file
goalie_stats = read.csv("game_goalie_stats.csv")
head(goalie_stats)

## Loading plyr
library(plyr)

## Computing the number of games per goalie
goalie_games = ddply(goalie_stats, .(player_id), summarise, numb_games = length(unique(game_id)))
head(goalie_games)
 
## Summary statistics
summary(goalie_games$numb_games)
IRQ = 144 - 5
IRQ
