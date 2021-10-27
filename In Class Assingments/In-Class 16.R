## Question 2
# Reading the data
NBA = read.csv('NBA_2006_2007.csv')
head(NBA)

# Building the linear regression model
lm_md = lm(W ~ EFG_pct + FTA_rate + TOV_pct + OREB_pct, data = NBA)

# Extracting model results
summary(lm_md)
## All variables are significant to predict wins except for FTA_rate.

# Defining the new observation
newdata = data.frame('EFG_pct' = 51, 'FTA_rate' = .35,'TOV_pct' = 16,'OREB_pct' = 32)

# Estimating the wins
predict(lm_md, newdata, type = 'response')
# If a team has the newdata features, the model predicted that this team would have approximately 51 wins in NBA 2006/07.
