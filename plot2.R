file1<- read.table("./data/household_power_consumption.txt", header = T,  sep=";", comment.char="%", stringsAsFactors=FALSE, na.strings="?")
file1$Date <- as.Date(file1$Date , format = "%d/%m/%y")
#file1$global_active_power <- as.Numeric(file1$global_active_power)
hist(as.numeric(file1$global_active_power),rm.NA=TRUE)