# load data
source("DataSource.R")

# plot "plot1.png"
png(filename = "plot1.png", width = 480, height=480)
hist(Power$Global_active_power, xlab="Global Active Power (kilowatts)",main="Global Active Power",col="red")

# close device
dev.off()
