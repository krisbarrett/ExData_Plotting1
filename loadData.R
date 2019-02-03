dataFile = "./data/household_power_consumption.txt"

# unzip data file if it does not exist
if(!file.exists(dataFile)) {
  unzip("./data/exdata_data_household_power_consumption.zip", exdir="./data")
}

# load data
df <- read.csv(dataFile, sep=";", 
               colClasses= c("character",
                             "character",
                             "numeric",
                             "numeric",
                             "numeric",
                             "numeric",
                             "numeric",
                             "numeric",
                             "numeric"), 
               na.strings="?")

# subset data to only include 2007-02-01 and 2007-02-02
df <- df[df$Date == "1/2/2007" | df$Date == "2/2/2007",]

# create a date vaiable for plotting
df$DateTime = paste(df$Date, df$Time)
df$DateTime = strptime(df$DateTime, "%d/%m/%Y %T")
