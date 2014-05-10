
#para el tercero #OK!
#corregir fallos con el minimo?. probablemente se apaña importando mejor
powerage.data <- read.csv('household_power_consumption.txt',header=TRUE,sep=";", na.strings = "?",colClasses=c("character","character","real","real","real","real","real","real","real"))
powerage.subset1 <- subset(powerage.data , Date == '1/2/2007' |  Date == '2/2/2007' ,) 

datetest=powerage.subset1$Date
hourtest=powerage.subset1$Time
fechas=paste(datetest, hourtest)

plot(strptime(fechas,"%d/%m/%Y %H:%M:%S"),powerage.subset1$Sub_metering_1,type="l",xlab="",ylab="Energy Submetering (kilowatts)", yaxt="n",ylim=c(0, 37))
lines(strptime(fechas,"%d/%m/%Y %H:%M:%S"),powerage.subset1$Sub_metering_2,type="l",col="red")
lines(strptime(fechas,"%d/%m/%Y %H:%M:%S"),as.integer(powerage.subset1$Sub_metering_3),type="l",col="blue")
legend("topright", lty=c(1,1,1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
pts=c(0,10,20,30)
axis(2,at=pts)
dev.copy(png,filename="plot3.png",width=480,height=480,units="px");
dev.off ();
