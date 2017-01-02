# load data
source("DataSource.R")

# plot "plot2.png"
DateTime <-paste(Power$Date,Power$Time)
Power$DateTime <-strptime(DateTime, "%d/%m/%Y %H:%M:%S")
png(filename = "plot2.png", width = 480, height=480)
plot(Power$DateTime, Power$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")

# close device
dev.off()