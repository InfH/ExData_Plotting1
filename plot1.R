source("powerdata.R") # loads and extracts data of interest into data.frame called df2

png("plot1.png") #default file size is 480 px x 480 px
hist(df2$Global_active_power, xlab = "Global Active Power (kilowatts)", main="Global Active Power",col="red")
dev.off()

