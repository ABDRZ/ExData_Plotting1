plot2 <- function(){
  houshold <- read.table("household_power_consumption.txt", sep = ";", header = TRUE,na.strings="?", nrows=100000)##all needed records are in the first 100k
  library(data.table)
  library(lubridate)
  data.table(houshold)
  hh<-subset(houshold, houshold$Date=="1/2/2007" | houshold$Date=="2/2/2007")
  wd1<-dmy_hms(paste(hh$Date,hh$Time))
  plot(wd1,hh$Global_active_power,type="l",main ="",xlab="",ylab = "Global Active Power (kilowatts)")
  dev.copy(png, file = "plot2.png")  ## Copy my plot to a PNG file
  dev.off()  ##  close the PNG device!
}