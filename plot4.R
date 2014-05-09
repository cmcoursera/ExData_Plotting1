plot4 <- function() {
  data <- read.table(file = "household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)
  data$V2 <- strptime(paste(data$V1, data$V2), "%d/%m/%Y %H:%M:%S")

  png(filename="plot4.png", bg="transparent")
  par(mfcol=c(2, 2))

  plot(data$V2, data$V3, type="l", ylab="Global Active Power", xlab="")

  plot(data$V2, data$V7, type="l", ylab="Energy sub metering", xlab="")
  lines(data$V2, data$V8, col="red")
  lines(data$V2, data$V9, col="blue")
  legend("topright", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1, 1, 1), bty="n")

  plot(data$V2, data$V5, type="l", ylab="Voltage", xlab="datetime")

  plot(data$V2, data$V4, type="l", ylab="Global_reactive_power", xlab="datetime")

  dev.off()
}