source("./loadData.R")

png(file="plot3.png")
with(df, plot(df$DateTime, df$Sub_metering_1, type="n", ylab="Energy sub metering", xlab=""))
lines(df$DateTime, df$Sub_metering_1)
lines(df$DateTime, df$Sub_metering_2, col="red")
lines(df$DateTime, df$Sub_metering_3, col="blue")
legend("topright", lty=1, col=c("black","red","blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
