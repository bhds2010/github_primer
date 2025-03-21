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


