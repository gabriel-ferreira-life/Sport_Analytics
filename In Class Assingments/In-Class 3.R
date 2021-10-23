library(plyr)

## Reading cvs file
goalie_stats = read.csv("game_goalie_stats.csv")
head(goalie_stats)

# Question 2
# Counting the number of games of each player
player_games = ddply(goalie_stats, .(player_id), summarise, numb_of_games = length(unique(game_id)))
player_games

# Question 3
# Creating a histogram of the nuber of games 
hist(player_games$numb_of_games, col = 'gray', xlab = 'Number of Games', main = 'Player Games Vs. Number of Games')
# This histogram is unimodel and right-skilled.