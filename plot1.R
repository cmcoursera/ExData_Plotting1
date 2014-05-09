plot1 <- function() {
  data <- read.table(file = "household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)
  png(filename="plot1.png", bg="transparent")
  hist(data$V3, col="Red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
  dev.off()
}