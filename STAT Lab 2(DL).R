## ISAT 251 Week 4 Lab
## Correlarion, Covariance, Linear regression

myfile <- file.choose()
myfile

hand_height.data <- read.csv(myfile, header = T)
summary(hand_height.data)

## Remove those rows with N/A
hand_height.data1 <- na.omit(hand_height.data)
summary(hand_height.data1)

# correlation coefficient
# cov + sd

hand_height.cov <- cov(hand_height.data1$height,hand_height.data1$right.hand.span)
hand_height.cov 


height.sd <- sd(hand_height.data1$height)
height.sd

hand.sd <- sd(hand_height.data1$right.hand.span)
hand.sd

r <- hand_height.cov/(height.sd*hand.sd)
r


# correlation in R
r1 <- cor(hand_height.data1$height,hand_height.data1$right.hand.span)
r1

# linear regression model
fit_rhs_ht <- lm(hand_height.data1$right.hand.span ~ hand_height.data1$height)
summary(fit_rhs_ht)

summary(fit_rhs_ht)$r.squared


## Scatter plot
plot(hand_height.data1$height, hand_height.data1$right.hand.span)

# add line for the linear model
abline(fit_rhs_ht, col='red', lwd=2)

