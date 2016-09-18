source("powerdata.R") # loads and extracts data of interest into data.frame called df2

png("plot4.png") #default file size is 480 px x 480 px
par(mfcol=c(2,2))
plot(df2$DateTime, df2$Global_active_power, type='l', xlab="", ylab = "Global Active Power (kilowatts)")

plot(df2$DateTime, df2$Sub_metering_1, type='l', xlab="", ylab = "Energy sub metering")
lines(df2$DateTime, df2$Sub_metering_2, col="red")
lines(df2$DateTime, df2$Sub_metering_3, col="blue")
legend("topright", colnames(df2)[grep("Sub_metering", colnames(df2))],col = c("black","red","blue"), lty=c(1,1,1))

plot(df2$DateTime, df2$Voltage, type='l', xlab="datetime", ylab = "Voltage")

plot(df2$DateTime, df2$Global_reactive_power, type='l', xlab="datetime", ylab = "Global_reactive_power")

dev.off()
