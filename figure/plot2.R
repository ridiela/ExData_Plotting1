
#para el segundo #OK!
powerage.data <- read.csv('household_power_consumption.txt',header=TRUE,sep=";", na.strings = "?",colClasses=c("character","character","real","real","real","real","real","real","real"))
powerage.subset1 <- subset(powerage.data , Date == '1/2/2007' |  Date == '2/2/2007' ,) 
datetest=powerage.subset1$Date
hourtest=powerage.subset1$Time
fechas=paste(datetest, hourtest)
plot(strptime(fechas,"%d/%m/%Y %H:%M:%S"),powerage.subset1$Global_active_power,type="l",xlab="",ylab="Global Active Power")
dev.copy(png,filename="plot2.png",width=480,height=480,units="px");
dev.off ();
