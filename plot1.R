## Getting and subsetting data to appropriate date range
fullData <- read.table(dataExt, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data <- fullData[fullData$Date %in% c("1/2/2007","2/2/2007") ,]


## Formatting and plotting graph #1
globalActivePower <- as.numeric(data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
