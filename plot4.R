source("./loadData.R")

png(file="plot4.png")
par(mfrow=c(2,2))
with(df, {
  plot(df$DateTime, df$Global_active_power, type="n", xlab="", ylab="Global Active Power")
  lines(df$DateTime, df$Global_active_power)
  
  plot(df$DateTime, df$Voltage, type="n", ylab="Voltage")
  lines(df$DateTime, df$Voltage)
  
  plot(df$DateTime, df$Sub_metering_1, type="n", ylab="Energy sub metering", xlab="")
  lines(df$DateTime, df$Sub_metering_1)
  lines(df$DateTime, df$Sub_metering_2, col="red")
  lines(df$DateTime, df$Sub_metering_3, col="blue")
  legend("topright", lty=1, col=c("black","red","blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), box.lty=0)
  
  plot(df$DateTime, df$Global_reactive_power, type="n")
  lines(df$DateTime, df$Global_reactive_power)
})
dev.off()