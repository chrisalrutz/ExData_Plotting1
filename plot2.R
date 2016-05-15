## Getting and subsetting data to appropriate date range

fullData <- read.table(dataExt, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data <- fullData[fullData$Date %in% c("1/2/2007","2/2/2007") ,]

## Formatting data/time and plotting the graph

datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
