#Set Working Directory
setwd("C:/Users/19734/Desktop/Courses/BHDS2010/github_primer")

# Import File 
text <-read.csv("TextMessages.csv", header=TRUE)

#Libraries used 
library(tidyr)
library(ggplot2)
library(dplyr)
library(Hmisc)
library(plyr)
library(tidyr)

#Create dataframe for imported data set
text<as.data.frame(text)
is.data.frame

#Check to see if Group is considered a factor 
is.factor(text$Group)
as.factor(text$Group)

#In order to group the histograms by Group and Time period, we need two factor
#variables so we convert both baseline and 6 months into one category (Time) by 
#reshaping the data from long to wide 

longtext<-gather(text,Time,Count,Baseline:Six_months, factor_key = TRUE )

#Faceted histograms of time points by group

longtext %>% ggplot(aes(x = Count))+geom_histogram(aes(color=Time,
fill=Time),position="identity",
 bins=10,alpha = 0.4) + scale_color_manual(values = c("skyblue",
    "red")) + scale_fill_manual(values = c("skyblue", "red")) +
  labs(title="Total Number of Text Messages: Baseline vs.6 Months By Group ",
       x=" Text Messages", y = "Frequency") + facet_grid(Group~.) 
