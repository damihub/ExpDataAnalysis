## create plot of power consumption data based on Global Active Power (kilowatts) 
## and Frequency with title = Global Active Power
#read data
df <- read.table("household_power_consumption.txt", header=TRUE, sep=";")
#subset the target dates
ndf1 <- subset(df, Date == 1/2/2007)
ndf2 <- subset(df, Date == 2/2/2007)
ndf3 <- rbind(ndf, ndf2)
#prepare the plot data
gap <- as.numeric(ndf3[,3])
hist(gap, freq=1200, xlab="Global Active Power (killowatts)", ylab="Frequency", col ="red", main = "Global Active Power")
#out to a file
dev.copy(png, file="plot1.png")
dev.off()