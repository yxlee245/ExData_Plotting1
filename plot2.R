# Load libraries
library(lubridate)

# Read in data
source("read_data.R")

# Concatenate Date and Time
df_subset$DateTime <- paste(df_subset[, "Date"], df_subset[, "Time"],
                            sep = " ")
# Parse DateTime as POSIX objects
df_subset$DateTime <- dmy_hms(df_subset$DateTime, tz = "CET")

# Plot graph
plot(df_subset$DateTime, df_subset$Global_active_power,
     type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

# Copy plot to png device
dev.copy(png,filename = "plot2.png", width = 480, height = 480, units = "px")
dev.off(which = dev.cur())