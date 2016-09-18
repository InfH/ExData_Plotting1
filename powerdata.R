#' powerdata.R
#' This file loads the data for the days of interest. Depends on having extracted household_power_consumption.txt to the same directory.
  

#  interested in days 2007-02-01 and 2007-02-02
df <- read.csv("household_power_consumption.txt", sep=";", na.strings = "?")
df$DateTime <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")
df2 <- subset(df, df$DateTime >= strptime("2007-02-01", format="%Y-%m-%d") & df$DateTime < strptime("2007-02-03", format="%Y-%m-%d"))



