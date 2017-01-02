# load data
source("DataSource.R")

# plot "plot4.png"
png(filename = "plot4.png", width = 480, height=480)
par(mfrow = c(2,2))

## plot part1
plot(Power$DateTime, Power$Global_active_power, type="l", ylab="Global Active Power", xlab = "")

## plot part2
plot(Power$DateTime, Power$Voltage, type="l", ylab="Voltage", xlab="datetime")

## plot part3
plot(Power$DateTime, Power$Sub_metering_1, type="l", ylab = "Energy sub metering", xlab = "", col="black")
lines(Power$DateTime, Power$Sub_metering_2, type="l", col="red")
lines(Power$DateTime, Power$Sub_metering_3, type="l", col="blue")
legend("topright", col =c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, cex=0.9, bty = "n")

## plot part4
plot(Power$DateTime, Power$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")

# close device
dev.off()