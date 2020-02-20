# Read in data
source("read_data.R")

# Plot histogram in PNG device
png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(
  df_subset$Global_active_power,
  main = "Global Active Power",
  xlab = "Global Active Power (kilowatts)",
  col = "red"
  )
dev.off()