source("powerdata.R") # loads and extracts data of interest into data.frame called df2

png("plot2.png") #default file size is 480 px x 480 px
plot(df2$DateTime, df2$Global_active_power, type='l', xlab="", ylab = "Global Active Power (kilowatts)")
dev.off()