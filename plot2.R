## create plot of power consumption data based on Global Active Power (kilowatts) 
## on weekdays
#read data
df <- read.table("household_power_consumption.txt", header=TRUE, sep=";")
#subset the target dates
ndf1 <- subset(df, Date == 1/2/2007)
ndf2 <- subset(df, Date == 2/2/2007)
ndf3 <- rbind(ndf, ndf2)
#prepare the plot data
gap <- as.numeric(ndf3[,3])
plot(gap, type="l", ylab="Global Active Power (killowatts)")
#out to a file
dev.copy(png, file="plot2.png")
dev.off()