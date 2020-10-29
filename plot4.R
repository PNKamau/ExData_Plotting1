#Use the R script file "getdata.R" to get and tidy the data from the text file
source("getdata.R")

#Use the R script file "functions1.R" to access the four functions  
#that plot the charts
source("functions1.R")

#Create a file device for plotting
png(file = "plot4.png")

#Set the parameters to allow plotting of 4 charts
par(mfrow = c(2, 2))

#Plot the charts
plotline_Global_active_power()
plotline_Voltage()
plotline_Sub_metering()
plotline_Global_reactive_power()

#Close the device
dev.off()