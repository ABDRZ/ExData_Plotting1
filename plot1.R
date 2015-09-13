plot1 <- function(){
  houshold <- read.table("household_power_consumption.txt", sep = ";", header = TRUE,na.strings="?", nrows=100000)##all needed records are in the first 100k
  library(data.table)
  data.table(houshold)
  hh<-subset(houshold, houshold$Date=="1/2/2007" | houshold$Date=="2/2/2007")
  hist(hh$Global_active_power,main ="Global Active Power",xlab = "Global Active Power (kilowatts)" ,col = "red")
  dev.copy(png, file = "plot1.png")  ## Copy my plot to a PNG file
  dev.off()  ## close the PNG device!
}