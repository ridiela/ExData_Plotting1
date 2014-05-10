powerage.data <- read.csv('household_power_consumption.txt',header=TRUE,sep=";", na.strings = "?",colClasses=c("character","character","real","real","real","real","real","real","real"))
powerage.subset1 <- subset(powerage.data , Date == '1/2/2007' |  Date == '2/2/2007' ,) 

#grafico 1 #OK!
#importados como factores
#hist(as.numeric(as.character(powerage.subset1$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
hist(powerage.subset1$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.copy(png,filename="plot1.png",width=480,height=480,units="px");
dev.off ();
