# Read in data
source("read_data.R")

# Plot graph
plot(df_subset$DateTime, df_subset$Sub_metering_1,
     type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(df_subset$DateTime, df_subset$Sub_metering_2, col = "red")
lines(df_subset$DateTime, df_subset$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1, y.intersp = 0.5)

# Copy plot to png device
dev.copy(png,filename = "plot3.png", width = 480, height = 480, units = "px")
dev.off(which = dev.cur())