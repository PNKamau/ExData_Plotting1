#Use the R script file "getdata.R" to get and tidy the data from the text file
source("getdata.R")

#Use the R script file "functions1.R" to access the function plothist that plots the histogram
source("functions1.R")

#Create a file device for plotting
png(file = "plot1.png")

#Plot the histogram chart
plothist_Global_active_power()

#Close the device
dev.off()