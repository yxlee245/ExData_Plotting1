# Read in data
source("read_data.R")

# Plot graphs
par(mfrow=c(2, 2), mar=c(4.5, 4.1, 1.5, 1.5))
# Subplot 1
with(df_subset, plot(DateTime, Global_active_power, type = "l",
                     xlab = "", ylab = "Global Active Power"))
# Subplot 2
with(df_subset, plot(DateTime, Voltage, type = "l", xlab = "datetime"))
# Subplot 3
with(df_subset, plot(DateTime, Sub_metering_1,
     type = "l", col = "black", xlab = "", ylab = "Energy sub metering"))
with(df_subset, lines(DateTime, Sub_metering_2, col = "red"))
with(df_subset, lines(DateTime, Sub_metering_3, col = "blue"))
legend("topright", col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1, x.intersp = 0.5, y.intersp = 0.4, bty = "n")
# Subplot 4
with(df_subset, plot(DateTime, Global_reactive_power, type = "l",
                     xlab = "datetime"))

# Copy plot to png device
dev.copy(png,filename = "plot4.png", width = 480, height = 480, units = "px")
dev.off(which = dev.cur())