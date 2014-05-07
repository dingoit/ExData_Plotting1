## Exploratory Data Analysis
## Course Project 1
## Plot 2

hpc <- read.table("household_power_consumption.txt", skip = 66637, nrow = 2880, sep = ";", 
                  col.names = colnames(read.table("household_power_consumption.txt",nrow = 1, header = TRUE, sep=";")))
hpc$DT <- strptime(paste(hpc$Date, hpc$Time), format="%d/%m/%Y %H:%M:%S")

png(file = "plot2.png", bg = "transparent", width = 480, height = 480, units = "px")

with (hpc, plot(DT, Global_active_power, type="l", ylab = "Global Active Power (kilowatts)", xlab=""))

dev.off()