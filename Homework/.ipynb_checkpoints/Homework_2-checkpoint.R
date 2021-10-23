# Exercise 1
# Under what circumstances would you use the mean as a measure of central tendency instead of the median? and vice-versa?
# I would use mean as measure of central tendency when there is no outliers in the dataset and 
# I would use median as measure of central tendency when there are outliers in the daset. 
# That's because mean may be affected by outliers.

# Exercise 2
# A basketball team free throw percentages are: 50, 98, 25, 76, 88, 75, 80. Compute the
# range and IQR.

# Creating a dataset
percentages = c(50, 98, 25, 76, 88, 75, 80)
basketball_percentages = data.frame(percentages)

# Getting the summary of the data
summary(basketball_percentages)

# range = max - min value 
range = 98 - 25
range # The range of the basketball team free throw percentages is 73.

# IQR = Q3 - Q1
IQR = 84 - 62.5
IQR # The inter-quartile range (IQR) is 21.5

# Exercise 3
P_MW = 26/35
P_ML = 9/35
P_LW = 32/35
P_LL = 3/35

entropy_M = -(P_MW*log(P_MW) + P_ML*log(P_ML))
entropy_M
entropy_L = -(P_LW*log(P_LW) + P_LL*log(P_LL))
entropy_L
# The team that has the higher variability in terms of game outcome is Manchester City.


# Exercise 4
# (a)
byrds = c(0.283, 0.293, 0.276, 0.210, 0.291, 0.264, 0.247)
Fuld = c(0.299, 0.143, 0.240, 0.255, 0.199, 0.239, 0.197)

# (b) Average
byrds_avg = mean(byrds)
byrds_avg # 0.266

Fuld_avg = mean(Fuld)
Fuld_avg # 0.22
# The player who has the higher average batting average is Marlon Byrds. 

# (c) Standard deviation
byrds_sd = sd(byrds)
byrds_sd # 0.03

Fuld_sd = sd(Fuld)
Fuld_sd # 0.05
# The player who has the higher variability in their batting average is terms of Standard Deviation is Sam Fuld.


# (d) Coefficient of variation
byrds_CV = byrds_sd / byrds_avg
byrds_CV # 0.11

Fuld_CV = Fuld_sd / Fuld_avg
Fuld_CV # 0.22
# The player who has the higher variability in their batting average is terms of CVs is Sam Fuld.


# (e) IQR
summary(byrds)
byrds_Q1 = 0.255
byrds_Q3 = 0.287
byrds_Q3 - byrds_Q1 # 0.032


summary(Fuld)
Fuld_Q1 = 0.198
Fuld_Q3 = 0.247
Fuld_Q3 - Fuld_Q1 # 0.049
# The player who has the higher variability in their batting average is terms of IQR is Sam Fuld.
