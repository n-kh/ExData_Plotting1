setwd("C:/nk2")
file1<- read.table("./data/household_power_consumption.txt", header = TRUE,  sep=";", comment.char="%", stringsAsFactors=FALSE, na.strings="?")
file1$Date <- as.Date(file1$Date , format = "%d/%m/%y")
file2<-file1[file1$Date=="1/2/2007"|file1$Date == "2/2/2007",]
hist(file2$Global_active_power)
