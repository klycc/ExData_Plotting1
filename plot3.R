#load data
source("DataSource.R")

#plot "plot3.png"
png(filename = "plot3.png", width = 480, height=480)
plot(Power$DateTime,Power$Sub_metering_1, type="l", ylab = "Energy sub metering", xlab = "", col="black")
lines(Power$DateTime, Power$Sub_metering_2, col="red")
lines(Power$DateTime, Power$Sub_metering_3, col="blue")
legend("topright", col =c("black", "red", "blue"),c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, cex=0.9)

# close device
dev.off()