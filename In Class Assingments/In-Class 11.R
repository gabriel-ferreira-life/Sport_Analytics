# Reading csv file
mlb = read.csv('Dataset_2_4.csv')
head(mlb)

# Computing the scatter-plot between hits and runs
plot(mlb$H, mlb$R, xlab = 'Hits', ylab = 'Runs', pch = 16, col = 'Red')
grid()

# The scatter-plot shows a positive linear relationship between hits and run

# Computing the correlation between hits and run
cor(mlb$H, mlb$R)

# Computing the marging of error
r = cor(mlb$H, mlb$R)
n = dim(mlb)[1]
ME = 2*sqrt((1 - r^2)/n)
ME

# Since r is greater than the margin error, the correlation between hits and runs is significant.