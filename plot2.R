source("./loadData.R")

png(file="plot2.png")
with(df, plot(df$DateTime, df$Global_active_power, type="n", 
              xlab="", 
              ylab="Global Active Power (kilowatts)"))
lines(df$DateTime, df$Global_active_power)
dev.off()