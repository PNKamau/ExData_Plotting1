#Load libraries
suppressMessages(library(tidyverse))
suppressMessages(library(lubridate))

#Read the data into a data frame
powerdata <- as_tibble(read.csv2("data/household_power_consumption.txt", 
                                 header = TRUE))

#Remove all observations and retain only those between the dates 2007-02-01 and 2007-02-02
powerdata <- filter(powerdata, Date == "1/2/2007" | Date == "2/2/2007")

#Remove all observations with missing values
powerdata <- filter(powerdata, 
                    Global_active_power != "?", 
                    Global_reactive_power != "?",
                    Voltage != "?",
                    Sub_metering_1 != "?",
                    Sub_metering_2 != "?",
                    Sub_metering_3 != "?"
)

#Remove the variable Global_intensity since it is not needed
powerdata <- select(powerdata, -Global_intensity)

#Create a new single variable for Date and Time then format to correct data type
powerdata$DateTime <- paste(powerdata$Date, powerdata$Time, sep=" ")
powerdata$DateTime <- dmy_hms(powerdata$DateTime)

#convert the Date variable into proper date format
powerdata$Date <- dmy(powerdata$Date)

#convert the Time variable into proper time format
powerdata$Time <- hms(powerdata$Time)

#convert all other variables into numeric format
powerdata$Global_active_power <- as.numeric(powerdata$Global_active_power)
powerdata$Global_reactive_power <- as.numeric(powerdata$Global_reactive_power)
powerdata$Voltage <- as.numeric(powerdata$Voltage)
powerdata$Sub_metering_1 <- as.numeric(powerdata$Sub_metering_1)
powerdata$Sub_metering_2 <- as.numeric(powerdata$Sub_metering_2)
powerdata$Sub_metering_3 <- as.numeric(powerdata$Sub_metering_3)