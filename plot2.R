# Read in data
source("read_data.R")

# Plot graph
plot(df_subset$DateTime, df_subset$Global_active_power,
     type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

# Copy plot to png device
dev.copy(png,filename = "plot2.png", width = 480, height = 480, units = "px")
dev.off(which = dev.cur())