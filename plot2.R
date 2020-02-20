# Read in data
source("read_data.R")

# Plot graph in PNG device
png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(df_subset$DateTime, df_subset$Global_active_power,
     type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()