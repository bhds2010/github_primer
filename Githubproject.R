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
 bins=10,alpha = 0.4) + scale_color_manual(values = c("blue",
    "red")) + scale_fill_manual(values = c("blue", "red")) +
  labs(title="Total Number of Text Messages: Baseline vs.6 Months By Group ",
       x=" Text Messages", y = "Frequency") + facet_grid(Group~.) 

#Faceted bar plot of time points by group, first obtain min and max by group
by(longtext$Count, longtext$Group, function(X) round(stat.desc(X), 2))

longtext %>% ggplot(aes(Time, Count)) + stat_summary(fun.y = mean, geom = "bar",
fill ="red",colour = "blue") + stat_summary(fun.data = mean_cl_normal, geom =
"pointrange", colour = "blue") + labs(x = "Time point",y = " Text Messages")+ 
scale_y_continuous(limits = c(0, 90), breaks= seq(from =0, to = 90,
by = 10))+ labs(title="Text Message Count Error Bar Plot by Time and Group",
x="Time point", y = "Text Messsage Count")+ theme_classic()+ facet_grid(Group~.) 


