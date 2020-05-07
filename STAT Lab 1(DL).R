# ISAT 251 Lab 1 Categorical Data
myfile <- file.choose()
myfile
# read data from csv to R
mms.data <- read.csv(myfile, header = T)
summary(mms.data)


# create freq. table for color
Color.table<-table(mms.data$color)

# create relative freq. table for defects
prop.table(table(mms.data$defect))

# percent
round(prop.table(table(mms.data$color)), 2)
mms.color <- c("blue", "brown", "green", "orange", "red", "yellow")
mms.color
# create a bar plot for color
barplot(color.table, main="Distribution of M&M's color", xlab = "color", ylab = "The number of M&M's", col = Color.table)

# create a pie for color
pie(Color.table, main ="Distribution of M$M's color" , col = mms.color)

# create contigency table
install.packages("gmodels")
library(gmodels)

CrossTable(mms.data$color, mms.data$defect)

#create segmented bar plot
table.color.defect <- table(mms.data$color)

table(mms.data$defect) 
table(mms.data$color)
prop.table(table(mms.data$defect))


                 
"prop.table(table(mms.data$defect))"        

