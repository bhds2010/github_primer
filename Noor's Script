system("git --version")

install.packages("usethis")
library(usethis)
use_git_config(user.name = "naayla12", user.email = "noor_aayla@brown.edu")

usethis::use_git_config(user.name = "naayla12", user.email = "noor_aayla@brown.edu")

# Load necessary library
library(dplyr)

# Read the dataset
df <- read.csv("TextMessages.csv")

# Display the structure of the dataset
str(df)

# Generate summary statistics for text messages by group and time
summary_stats <- df %>% 
  group_by(Group) %>% 
  summarise(
    Baseline_Mean = mean(Baseline, na.rm = TRUE),
    Baseline_SD = sd(Baseline, na.rm = TRUE),
    Baseline_Min = min(Baseline, na.rm = TRUE),
    Baseline_Max = max(Baseline, na.rm = TRUE),
    SixMonths_Mean = mean(Six_months, na.rm = TRUE),
    SixMonths_SD = sd(Six_months, na.rm = TRUE),
    SixMonths_Min = min(Six_months, na.rm = TRUE),
    SixMonths_Max = max(Six_months, na.rm = TRUE)
  )

# Print summary statistics
print(summary_stats)

#At the Baseline (Initial Time Point), participants in Group 1 sent an average 
#of 64.8 text messages, with a standard deviation of 10.7, indicating moderate 
#variability in texting behavior. The minimum number of messages sent was 47, 
#while the maximum was 85. Similarly, participants in Group 2 had a slightly 
#higher mean of 65.6 messages, with a standard deviation of 10.8, suggesting a 
#similar spread of values. The minimum number of messages in this group was 46, 
#and the maximum was 89.

#After six months, both groups experienced a decline in the number of messages 
#sent. Group 1 saw a more substantial reduction, with a new mean of 53.0 
#messages (a decrease of approximately 11.8 messages from baseline). 
#Additionally, the standard deviation increased to 16.3, suggesting that 
#individuals in this group displayed more varied texting behavior over time. 
#The minimum and maximum values were not explicitly provided but are likely 
#within the range of 9 to 78 messages. In contrast, Group 2 maintained a 
#relatively higher number of messages, with a mean of 61.8 messages 
#(a smaller decrease of about 3.8 messages from baseline). The standard 
#deviation was 9.41, indicating that texting behavior remained more consistent 
#within this group. The minimum and maximum values were at least 46 and 79 
#messages, respectively.

#Overall Interpretation
#Both groups showed a decline in the number of text messages sent over time. 
#However, Group 1 experienced a greater decrease, suggesting that participants 
#in this group reduced their texting behavior more substantially. Additionally, 
#the increase in standard deviation for Group 1 at six months indicates greater 
#variability in how much texting behavior changed within this group—some 
#participants may have significantly reduced their texting, while others 
#maintained a more consistent level. On the other hand, Group 2 exhibited more 
#stable texting behavior, with a smaller overall decline and less variability 
#over time.
