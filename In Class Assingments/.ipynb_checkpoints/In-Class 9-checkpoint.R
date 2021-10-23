# Importing dataset
durant = read.csv('Durant_2011_2012.csv')
james = read.csv('James_2011_2012.csv')

# Computing average assists for each player 
mean(durant$AST) # 3.5
mean(james$AST)  # 6.2
# On average, James had a higher number of assistance than Durant.

# Computing the margin of error of each player
2*sd(durant$AS) / sqrt(dim(durant)[1]) # 0.479
2*sd(james$AS) / sqrt(dim(james)[1]) # 0.600
# There is more uncertainty in the estimation average of James.


