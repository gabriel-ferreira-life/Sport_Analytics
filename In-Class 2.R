## Reading cvs file
goalie_stats = read.csv("game_goalie_stats.csv")

## Printing the first four observation
head(goalie_stats, 4)

## Printing the last four observation
tail(goalie_stats, 4)

## Reporting the number of team ids
length(unique(goalie_stats$team_id))

## Selecting oalies with savePercentage > 95% in winning plays
goalie_95_w = subset(goalie_stats, savePercentage > 95 & decision == 'W')

## Reporting the number of goalies with savePercent age > 95% in winning plays
dim(goalie_95_w)
