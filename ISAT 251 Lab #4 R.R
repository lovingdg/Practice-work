# Lab week 8
# CI for one mean

# load data into R
myfile<- file.choose()
mms.bags<- read.csv(myfile, header= T)

summary(mms.bags)

# mean
x.bar <- mean(mms.bags$weight)
x.bar


# sample size
dim(mms.bags)
n <- dim(mms.bags)[1]
n

# standard deviation
s <- sd(mms.bags$weight)
s

# se
se <- s/sqrt(n)
se

# crirical value 
t_99 <- qt(p= .995 , df= n-1)
t_99
ME_99 <- t_99*se

# CI
CI_99 <- c(x.bar-ME_99,x.bar+ME_99)
CI_99

# Histogram of distribution of weight of M&M's
hist(mms.bags$weight, main= "Histogram of Distribution of Weight of M&M's", xlab = "weight", ylab = "Frequency")

# degree of freedom
mms.df <- n-1
# t*
t_90 <- qt(p=.95 , df =mms.df)
t_95 <- qt(p=.975 , df =mms.df)
t_99 <- qt(p=.995 , df =mms.df)

# ME

