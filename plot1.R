# Read in data
source("read_data.R")

# Plot histogram
hist(
  df_subset$Global_active_power,
  main = "Global Active Power",
  xlab = "Global Active Power (kilowatts)",
  col = "red"
  )

# Copy plot to png device
dev.copy(png,filename = "plot1.png", width = 480, height = 480, units = "px")
dev.off(which = dev.cur())