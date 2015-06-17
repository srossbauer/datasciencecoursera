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

#plot 2
plot(rd$tstamp,rd$Global_active_power,
     type="l", 
     xlab = "", 
     ylab="Global Active Power (kilowatts)")
#save as png
dev.copy(png, file = "plot2.png")
dev.off()