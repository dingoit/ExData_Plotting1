## Exploratory Data Analysis
## Course Project 1
## Plot 3

hpc <- read.table("household_power_consumption.txt", skip = 66637, nrow = 2880, sep = ";", 
                  col.names = colnames(read.table("household_power_consumption.txt",nrow = 1, header = TRUE, sep=";")))
hpc$DT <- strptime(paste(hpc$Date, hpc$Time), format="%d/%m/%Y %H:%M:%S")

png(file = "plot3.png", bg = "transparent", width = 480, height = 480, units = "px")

with(hpc, plot(DT, Sub_metering_1, type="n", xlab="", ylab="Energy sub metering"))
with(hpc, lines(DT, Sub_metering_1, col="black"))
with(hpc, lines(DT, Sub_metering_2, col="red"))
with(hpc, lines(DT, Sub_metering_3, col="blue"))
legend("topright", lty=c(1,1,1), col = c("black", "red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

dev.off()