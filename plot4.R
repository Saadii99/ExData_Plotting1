source("load_data.R")

png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))

# Top-left
plot(filtered_data$DateTime, filtered_data$Global_active_power, 
     type="l", xlab="", ylab="Global Active Power")

# Top-right
plot(filtered_data$DateTime, filtered_data$Voltage, 
     type="l", xlab="datetime", ylab="Voltage")

# Bottom-left
plot(filtered_data$DateTime, filtered_data$Sub_metering_1,
     type="l", xlab="", ylab="Energy sub metering")
lines(filtered_data$DateTime, filtered_data$Sub_metering_2, col="red")
lines(filtered_data$DateTime, filtered_data$Sub_metering_3, col="blue")
legend("topright", bty="n",
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty=1)

# Bottom-right
plot(filtered_data$DateTime, filtered_data$Global_reactive_power,
     type="l", xlab="datetime", ylab="Global Reactive Power")
dev.off()
