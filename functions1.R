#Function to plot histogram using Global_active_power variable
plothist_Global_active_power <- function() {
  
  hist(powerdata$Global_active_power, col = "red", 
       xlab = "Global Active Power (kilowatts)", 
       main = "Global Active Power" 
  )
  
}

#Function to plot line chart using Global_active_power variable against the 
#DateTime variable
plotline_Global_active_power <- function(){
  
  with(powerdata, 
       plot(DateTime, 
            Global_active_power, 
            type = "l", 
            xlab = "", 
            ylab = "Global Active Power (kilowatts)"
       )
  )
  
}

#Function to plot the line chart using sub metering variables
plotline_Sub_metering <- function() {
  
  #Create the line chart using Sub_metering_1 variable against the DateTime variable
  with(powerdata, 
       plot(DateTime, 
            Sub_metering_1, 
            type = "l", 
            xlab = "", 
            ylab = "Energy sub metering"
       )
  )
  
  #Add the second line (red colour) to the chart using Sub_metering_2 variable against 
  #the DateTime variable
  with(powerdata, 
       points(DateTime, 
              Sub_metering_2, 
              type = "l", 
              col = "red"
       )
  )
  
  #Add the third line (blue colour) to the chart using Sub_metering_3 variable against 
  #the DateTime variable
  with(powerdata, 
       points(DateTime, 
              Sub_metering_3, 
              type = "l", 
              col = "blue"
       )
  )
  
  #Add a legend at the top right position of the chart 
  legend("topright", 
         col = c("black", "red", "blue"), 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         lty = 1, 
         pt.cex = 2, 
         cex = 0.8
  )
  
}

#Function to plot line chart using Voltage variable against the DateTime variable
plotline_Voltage <- function() {
  
  with(powerdata, 
       plot(DateTime, 
            Voltage, 
            type = "l", 
            xlab = "Datetime", 
            ylab = "Voltage"
       )
  )
  
}

#Function to plot line chart using Global_reactive_power variable against the 
#DateTime variable
plotline_Global_reactive_power <- function() {
  
  with(powerdata, 
       plot(DateTime, 
            Global_reactive_power, 
            type = "l", 
            xlab = "Datetime", 
            ylab = "Global_reactive_power"
       )
  )
  
}