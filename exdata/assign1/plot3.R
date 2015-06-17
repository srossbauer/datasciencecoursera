library(data.table)
library(dplyr)

df <- fread("household_power_consumption.txt",
            colClasses=c("Date","time","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),
            na.strings="?")

dt <- tbl_df(df)
rm("df")
rd <- filter(dt, Date %in% c("1/2/2007","2/2/2007"))

# create timestamp
rd$tstamp <- with(rd, as.POSIXct(paste(Date, Time), format="%e/%m/%Y %H:%M:%S"))

# convert column class to numeric
rd[3:8] <- lapply(rd[3:8], as.numeric)


# plot 3
plot(rd$tstamp,rd$Sub_metering_1,
     type="l", 
     xlab = "", 
     ylab="Energy sub metering")
lines(rd$tstamp,rd$Sub_metering_2, col="red")
lines(rd$tstamp,rd$Sub_metering_3, col="blue")
legend("topright", 
       lty=c(1,1),
       col=c("black","red","blue"), 
       legend = c("Sub_metering_1",
                  "Sub_metering_2",
                  "Sub_metering_3"))


#save as png
dev.copy(png, file = "plot3.png")
dev.off()