plot3 <- function(){
  houshold <- read.table("household_power_consumption.txt", sep = ";", header = TRUE,na.strings="?", nrows=100000)##all needed records are in the first 100k
  library(data.table)
  library(lubridate)
  data.table(houshold)
  hh<-subset(houshold, houshold$Date=="1/2/2007" | houshold$Date=="2/2/2007")
  wd1<-dmy_hms(paste(hh$Date,hh$Time))
  plot(wd1,hh$Sub_metering_1,type="l",main ="",xlab="",ylab = "Energy Sub metering")
  points(wd1,hh$Sub_metering_2,type="l",col="red")
  points(wd1,hh$Sub_metering_3,type="l",col="blue")
  legend("topright",pch = "_",col = c("black","red","blue"),legend = c("Sub_metering_1       ","Sub_metering_2       ","Sub_metering_3       "))
  dev.copy(png, file = "plot3.png")  ## Copy my plot to a PNG file
  dev.off()  ## close the PNG device!
  }