## 1
# If you increase X by 2 units, Y will increase by 2.1.

## 2
# 91% of the variability in Y, can be explained using X as a predictor variable

## 3
# Y = 3.2 + 1.87*x + 2.1*x**2
# x = 3.2
Y = 3.2 + 1.87*3.2 + 2.1*(3.2**2)
Y
# = 30.69

## 4
## (a)
batting = read.csv('Batting.csv')
head(batting)

## (b)
library(plyr)

## Aggregating data at the player level
batting_agg = ddply(batting, .(playerID), summarise, tot_AB = sum(AB, na.rm = T), tot_HR = sum(HR, na.rm = T), tot_SO = sum(SO, na.rm = T))
head(batting_agg)

## Selecting players with at least 5000 at bats
batting_agg = subset(batting_agg, tot_AB >= 5000)

## Computing the HR and SO rate
batting_agg$HR_rate = batting_agg$tot_HR / batting_agg$tot_AB
batting_agg$SO_rate = batting_agg$tot_SO / batting_agg$tot_AB
head(batting_agg)

# Building the quadratic model
quad_md = lm(SO_rate ~ HR_rate + I(HR_rate^2), data = batting_agg)
summary(quad_md)

# It is significant because the Std. Error times 2 is 8.46, and this number is smaller in magnitude than Estimate coefficient, which is -18.52 in this case.

