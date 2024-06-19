title: "Exploratory Data Analysis: Peer-graded Assignment: Course Project 1_plot3"
author: "Sylvie Lahaie"
date: "`r format(Sys.time(), '%d %B, %Y')`"


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

# Plot 3: x vs. y plot


plot(time_axis, data[, 7], xlab = "", ylab = "Energy sub metering", type = "l")

lines(time_axis, data[, 8], col = "red")

lines(time_axis, data[, 9], col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black","red","blue"), lty = 1)