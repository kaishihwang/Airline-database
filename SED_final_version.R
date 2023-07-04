# Load the dataset
sleep <- read.csv("Sleep_Efficiency.csv",header=T,na.strings="?")
names(sleep)
dim(sleep)
head(sleep)
summary(sleep)

## Data Cleaning
# Remove rows with missing values
sleep_clean <- na.omit(sleep)
dim(sleep_clean) 
# Rows from 452 rows to 388 rows, too many rows are removed- Reject

# Impute using mean, median, or mode for variables
# Impute missing values with median for quantitative variables
sleep_imputed <- sleep
for (col_name in colnames(sleep_imputed)[c(2, 6:13, 15)]) {
  sleep_imputed[is.na(sleep_imputed[[col_name]]), col_name] <- median(sleep_imputed[[col_name]], na.rm = TRUE)
}

# Create a function to find the mode
get_mode <- function(x) {
  unique_x <- unique(x)
  unique_x[which.max(tabulate(match(x, unique_x)))]
}

# Impute using mode function for categorical variables (Gender and Smoking.status)
for (col_name in colnames(sleep_imputed)[c(3, 14)]) {
  sleep_imputed[is.na(sleep_imputed[[col_name]]), col_name] <- get_mode(sleep_imputed[[col_name]])
}

# Display the cleaned and imputed dataset
dim(sleep_imputed)
head(sleep_imputed)
summary(sleep_imputed)

# Check missing data
sum(is.na(sleep))
sum(is.na(sleep_imputed))

# Correlation Matrix
# install.packages("dplyr")
library(dplyr)

# Convert smoking status to a binary variable (1: Smoker, 0: Non-smoker)
sleep_imputed$Smoking.status.binary <- ifelse(sleep_imputed$Smoking.status == "Yes", 1, 0)

# Remove the original Smoking.status column
sleep_imputed$Smoking.status <- NULL

# Select relevant columns and exclude categorical variables
selected_sleep <- sleep_imputed %>%
  select(Age, Sleep.duration, Sleep.efficiency, REM.sleep.percentage, Deep.sleep.percentage,
         Light.sleep.percentage, Awakenings, Caffeine.consumption, Alcohol.consumption,
         Smoking.status.binary, Exercise.frequency)

# Calculate the correlation matrix
correlation_matrix <- cor(selected_sleep)
correlation_matrix <- round(correlation_matrix, 2)
correlation_matrix

# If identify columns with zero standard deviation
#zero_sd <- sapply(selected_data, function(x) sd(x) == 0)
#selected_data_zero_sd <- selected_data[!zero_sd]

# QQ Plots
par(mfrow = c(2, 3))

qqnorm(sleep_imputed$Deep.sleep.percentage, main = "QQ Plot of Deep Sleep Percentage")
qqline(sleep_imputed$Deep.sleep.percentage)

qqnorm(sleep_imputed$Exercise.frequency, main = "QQ Plot of Exercise.frequency")
qqline(sleep_imputed$Exercise.frequency)

qqnorm(sleep_imputed$Age, main = "QQ Plot of Age")
qqline(sleep_imputed$Age)

qqnorm(sleep_imputed$Light.sleep.percentage, main = "QQ Plot of Light.sleep.percentage")
qqline(sleep_imputed$Light.sleep.percentage)

qqnorm(sleep_imputed$Awakenings, main = "QQ Plot of Awakenings")
qqline(sleep_imputed$Awakenings)

qqnorm(sleep_imputed$Alcohol.consumption, main = "QQ Plot of Alcohol.consumption")
qqline(sleep_imputed$Alcohol.consumption)

# Association Analysis
library(regclass)

# Select "sleep efficiency" as the dependent variable and conduct association analysis

# Top 3 strongest positive variable: Deep.sleep.percentage, Exercise.frequency, Age
associate(Sleep.efficiency~Deep.sleep.percentage,data=sleep_imputed)
associate(Sleep.efficiency~Exercise.frequency,data=sleep_imputed)
associate(Sleep.efficiency~Age,data=sleep_imputed)

# Top 3 strongest negative variable: Light.sleep.percentage, Awakenings, Alcohol.consumption
associate(Sleep.efficiency~Light.sleep.percentage,data=sleep_imputed)
associate(Sleep.efficiency~Awakenings,data=sleep_imputed)
associate(Sleep.efficiency~Alcohol.consumption,data=sleep_imputed)

# Testing association
associate(Sleep.efficiency~Smoking.status.binary,data=sleep_imputed)
associate(Sleep.duration~Gender,data=sleep_imputed)
associate(Smoking.status.binary~Age,data=sleep_imputed)

# Logs association
associate(log10(Sleep.efficiency)~log10(Deep.sleep.percentage),data=sleep_imputed)
associate(log10(Sleep.efficiency)~log10(Exercise.frequency),data=sleep_imputed)
associate(log10(Sleep.efficiency)~log10(Light.sleep.percentage),data=sleep_imputed)
associate(log10(Sleep.efficiency)~log10(Alcohol.consumption),data=sleep_imputed)

## Categorical association
#associate(Sleep_duration~Gender,data=sleep_imputed)
#associate(Sleep_efficiency ~Gender,data=sleep_imputed)
associate(REM.sleep.percentage~Gender,data=sleep_imputed)
#associate(Awakenings~Gender,data=sleep_imputed)

## Categorical association for Age Group
# initialize vector of AgeBin 
AgeBin<-c()
#Assign age variables into each agebin column  
factor(sleep_imputed$Age)
for (i in 1:length(sleep_imputed$Age)){
  if (sleep_imputed$Age[i]>59) {AgeBin[i]="60s"}else{
    if (sleep_imputed$Age[i]>49) {AgeBin[i]="50s"}else{
      if (sleep_imputed$Age[i]>39) {AgeBin[i]="40s"}else{
        if(sleep_imputed$Age[i]>29) {AgeBin[i]="30s"}else{
          if(sleep_imputed$Age[i]>19) {AgeBin[i]="20s"}else{
            if(sleep_imputed$Age[i]>0) {AgeBin[i]="Under 19"}
          }
        }
      }
    }
  }
}
AgeBin
#create a new column
AgeGroup<-data.frame(AgeBin)
sleep_imputed<-cbind(sleep_imputed,AgeGroup)
sleep_imputed
factor(sleep_imputed$AgeBin)

## Categorical association
#associate(Sleep_duration~AgeBin,data=sleep_imputed)
associate(Sleep.efficiency ~AgeBin,data=sleep_imputed)
associate(REM.sleep.percentage~AgeBin,data=sleep_imputed)
associate(Light.sleep.percentage~AgeBin,data=sleep_imputed)
#associate(Awakenings~AgeBin,data=sleep_imputed)

## Regression Models
# Simple Linear Regression 
sleep.lin.age = lm(Sleep.efficiency~Age, data = sleep_imputed)
summary(sleep.lin.age) #significant

sleep.lin.exercise = lm(Sleep.efficiency~Exercise.frequency, data = sleep_imputed)
summary(sleep.lin.exercise) #significant

sleep.lin.ds = lm(Sleep.efficiency~Deep.sleep.percentage, data = sleep_imputed)
summary(sleep.lin.ds) #significant

sleep.lin.ls = lm(Sleep.efficiency~Light.sleep.percentage, data = sleep_imputed)
summary(sleep.lin.ls) #significant 

sleep.lin.alc = lm(Sleep.efficiency~Alcohol.consumption, data = sleep_imputed)
summary(sleep.lin.alc) #significant

sleep.lin.awake = lm(Sleep.efficiency~Awakenings, data = sleep_imputed)
summary(sleep.lin.awake) #significant

sleep.lin.caf = lm(Sleep.efficiency~Caffeine.consumption, data = sleep_imputed)
summary(sleep.lin.caf) #not significant 

sleep.lin.sd = lm(Sleep.efficiency~Sleep.duration, data = sleep_imputed)
summary(sleep.lin.sd) #not significant 

sleep.lin.rem = lm(Sleep.efficiency~REM.sleep.percentage, data = sleep_imputed)
summary(sleep.lin.rem) #not significant 

#confidence Intervals 
confint(sleep.lin.age, level= 0.95)
confint(sleep.lin.exercise, level= 0.95)
confint(sleep.lin.ds, level= 0.95)
confint(sleep.lin.ls, level= 0.95)
confint(sleep.lin.alc, level= 0.95)
confint(sleep.lin.awake, level= 0.95)
confint(sleep.lin.caf, level= 0.95)
confint(sleep.lin.sd, level= 0.95)
confint(sleep.lin.rem, level= 0.95)

#Plots
plot(sleep_imputed$Sleep.efficiency, sleep_imputed$Age, xlab = "Age", ylab= "Sleep Efficiency")
abline(sleep.lin.age, lty = 1, lwd=5, col ="red")

plot(sleep_imputed$Sleep.efficiency, sleep_imputed$Exercise.frequency, xlab = "Exercise Frequency", ylab= "Sleep Efficiency")
abline(sleep.lin.exercise, lty = 1, lwd=5, col ="red")

plot(sleep_imputed$Sleep.efficiency, sleep_imputed$Deep.sleep.percentage, xlab = "Deep Sleep %", ylab= "Sleep Efficiency")
abline(sleep.lin.ds, lty = 1, lwd=5, col ="red")

plot(sleep_imputed$Sleep.efficiency, sleep_imputed$Light.sleep.percentage, xlab = "Light Sleep %", ylab= "Sleep Efficiency")
abline(sleep.lin.ls, lty = 1, lwd=5, col ="red")

plot(sleep_imputed$Sleep.efficiency, sleep_imputed$Alcohol.consumption, xlab = "Alcohol Consumption", ylab= "Sleep Efficiency")
abline(sleep.lin.alc, lty = 1, lwd=5, col ="red")

plot(sleep_imputed$Sleep.efficiency, sleep_imputed$Awakenings, xlab = "Awakenings", ylab= "Sleep Efficiency")
abline(sleep.lin.awake, lty = 1, lwd=5, col ="red")

plot(sleep_imputed$Sleep.efficiency, sleep_imputed$Caffeine.consumption, xlab = "Caffeine Consumption", ylab= "Sleep Efficiency")
abline(sleep.lin.awake, lty = 1, lwd=5, col ="red")

plot(sleep_imputed$Sleep.efficiency, sleep_imputed$Sleep.duration, xlab = "Sleep Duration", ylab= "Sleep Efficiency")
abline(sleep.lin.awake, lty = 1, lwd=5, col ="red")

plot(sleep_imputed$Sleep.efficiency, sleep_imputed$REM.sleep.percentage, xlab = "REM Sleep Percentage", ylab= "Sleep Efficiency")
abline(sleep.lin.awake, lty = 1, lwd=5, col ="red")

# Fit a multiple linear regression model
sleep_model <- lm(Sleep.efficiency ~ Age+Sleep.duration+REM.sleep.percentage+Deep.sleep.percentage+Awakenings+Caffeine.consumption+Alcohol.consumption+Smoking.status.binary+Exercise.frequency, data = sleep_imputed)

# Display the model summary
summary(sleep_model)

## Other Technique
# Decision Tree
install.packages("tree")
library(tree)
library(ISLR)
# We first use classification trees to analyze the Carseats data set. In these data, Sales is a continuous variable, and so we begin by recording it as a binary variable.
sleep_imputed$sleep_quality <- factor(ifelse(sleep_imputed$Sleep.efficiency < 0.60, "Poor",
                                             ifelse(sleep_imputed$Sleep.efficiency < 0.80, "Fair",
                                                    ifelse(sleep_imputed$Sleep.efficiency < 0.90, "Good",
                                                           ifelse(sleep_imputed$Sleep.efficiency <= 1, "Excellent", NA)))),
                                      levels = c("Poor", "Fair", "Good", "Excellent"))

attach(sleep_imputed)#  We use the ifelse() function to create a variable, called High, which takes on a value of Yes if the Sales variable exceeds 8, and takes on a value of No otherwise
#  data.frame() function to merge High with the rest of the Carseats data

View(sleep_imputed)
# We now use the tree() function to fit a classification tree in order to predict High using all variables but Sales.
# The syntax of the tree() function is quite similar to that of the lm() function
tree.sleep_imputed=tree(sleep_quality ~ Age + Sleep.duration + Awakenings + Caffeine.consumption +
                          Alcohol.consumption + Smoking.status.binary + Exercise.frequency,sleep_imputed)
# A small deviance indicates a tree that provides a good fit to the (training) data.
summary(tree.sleep_imputed)
# The summary() function lists the variables that are used as internal nodes
# in the tree, the number of terminal nodes, and the (training) error rate
# 1) 8 Internal nodes: ShelveLoc, Price, Income, CompPrice, Population, Advertising, Age, US out of 10 predictors
# 2) The number of terminal nodes: 27
# 3) The training error rate: 9% (36 out of 400) is misclassified
# 4) Residual mean deviance=deviance/(n-|T0|)=deviance/(400-27)=deviance/373, the equation for deviance is shown in slide page 8.

# We use the plot() function to display the tree structure,and then use the text() function to display the node labels
plot(tree.sleep_imputed)
# The argument pretty=0 instructs R to include the category names for any qualitative predictors, rather than simply displaying a letter for each category.
# The most important indicator of Sales appears to be shelving location, since the first branch differentiates Good locations from Bad and Medium locations
text(tree.sleep_imputed)

tree.sleep_imputed
summary(sleep_imputed)

## Data Visualization
# ggplot
library(ggplot2)
ggplot(sleep_imputed, aes(x=Age, y=Sleep.efficiency, fill=Gender)) +
  geom_point(shape=21, size=2, alpha=0.6, position="jitter")

ggplot(sleep_imputed, aes(AgeBin, fill = Gender)) +
  geom_bar(position = "dodge", alpha=0.8)

sleep_imputed$Caffeine.consumption<-as.factor(sleep_imputed$Caffeine.consumption)
sleep_imputed$Alcohol.consumption<-as.factor(sleep_imputed$Alcohol.consumption)
sleep_imputed$Exercise.frequency<-as.factor(sleep_imputed$Exercise.frequency)
sleep_imputed$Deep.sleep.percentage<-as.factor(sleep_imputed$Deep.sleep.percentage)
sleep_imputed$REM.sleep.percentage<-as.factor(sleep_imputed$REM.sleep.percentage)
sleep_imputed$Sleep.efficiency<-as.factor(sleep_imputed$Sleep.efficiency)

ggplot(sleep_imputed, aes(Alcohol.consumption, fill=Sleep.efficiency)) +
  geom_bar(position = "fill")
