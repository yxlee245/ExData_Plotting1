# Load libraries
library(lubridate)

# Read in data and get subset of data for 2007-02-01 and 2007-02-02
df <- read.table("data/household_power_consumption.txt", header = TRUE, sep = ";",
                 na.strings = "?", stringsAsFactors = FALSE)
df_subset <- subset(df, Date == "1/2/2007" | Date == "2/2/2007")

# Concatenate Date and Time
df_subset$DateTime <- paste(df_subset[, "Date"], df_subset[, "Time"],
                            sep = " ")
# Parse DateTime as POSIX objects
df_subset$DateTime <- dmy_hms(df_subset$DateTime, tz = "CET")

# Remove original df to save memory
rm(df)