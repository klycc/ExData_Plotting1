# download and untar the "household_power_consumption.txt" file to your current working directory

Power<- read.table(text = grep("^[1,2]/2/2007",readLines("household_power_consumption.txt"),value=TRUE), sep=";",na.strings="?")
colnames(Power)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
DateTime <-paste(Power$Date,Power$Time)
Power$DateTime <-strptime(DateTime, "%d/%m/%Y %H:%M:%S")
## str(Power)
