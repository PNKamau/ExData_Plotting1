#Use the R script file "getdata.R" to get and tidy the data from the text file
source("getdata.R")

#Use the R script file "functions1.R" to access the function plotline_Sub_metering 
#that plots the chart
source("functions1.R")

#Create a file device for plotting
png(file = "plot3.png")

#Plot the chart
plotline_Sub_metering()

#Close the device
dev.off()