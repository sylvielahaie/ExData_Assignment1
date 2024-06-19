title: "Exploratory Data Analysis: Peer-graded Assignment: Course Project 1_plot2"
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


# Plot 2: X vs. y plot


Sys.setlocale("LC_TIME", "English")

date_converted <- as.Date(data[, 1], format = "%d/%m/%Y")

time_converted <- strptime(data[, 2], format = "%H:%M:%S")

time_axis <- as.POSIXct(paste(date_converted, data[, 2]))

plot(time_axis, data[, 3], xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")



