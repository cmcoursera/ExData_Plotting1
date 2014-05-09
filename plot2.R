plot2 <- function() {
  data <- read.table(file = "household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)
  data$V2 <- strptime(paste(data$V1, data$V2), "%d/%m/%Y %H:%M:%S")
  png(filename="plot2.png", bg="transparent")
  plot(data$V2, data$V3, type="l", ylab="Global Active Power (kilowatts)", xlab="")
  dev.off()
}