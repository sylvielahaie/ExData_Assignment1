title: "Exploratory Data Analysis: Peer-graded Assignment: Course Project 1-Plot4"
author: "Sylvie Lahaie"
date: "`r format(Sys.time(), '%d %B, %Y')`"
output:
  html_document:
  df_print: paged
  
  # Knit png
  
knitr::opts_chunk$set(cache = FALSE,
                      echo = FALSE,
                      warning = FALSE, 
                      message = FALSE, 
                      cache.lazy = FALSE, 
                      dev = c("png"), 
                      fig.keep = 'high', 
                      fig.path="plots/", 
                      fig.show="asis",
                      fig.dim = c(4.5,4.5))



# Import data


data <- read.table("/Users/sylvielahaie/Downloads/household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", na.strings = "?")

data <- data[data$Date %in% c("1/2/2007","2/2/2007"), ]

data

# Plot 4: four graphs 

par(mfrow = c(2,2))

plot(time_axis, data[, 3], xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")

plot(time_axis, data[, 5], xlab = "datetime", ylab = "Voltage", type = "l")

plot(time_axis, data[, 7], xlab = "", ylab = "Energy sub metering", type = "l")

lines(time_axis, data[, 8], col = "red")

lines(time_axis, data[, 9], col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black","red","blue"), cex = 0.8, lty = 1 , bty = "n")

plot(time_axis, data[, 4], xlab = "datetime", ylab = "Global_reactive_power", type = "l")