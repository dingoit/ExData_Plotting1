## Exploratory Data Analysis
## Course Project 1
## Plot 1

hpc <- read.table("household_power_consumption.txt", skip = 66637, nrow = 2880, sep = ";", na.strings="?", 
                  col.names = colnames(read.table("household_power_consumption.txt",nrow = 1, header = TRUE, sep=";")))

png(file = "plot1.png", bg = "transparent", width = 480, height = 480, units = "px")

with(hpc, hist(Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main = "Global Active Power"))

dev.off()