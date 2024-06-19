
title: "Exploratory Data Analysis: Peer-graded Assignment: Course Project 1_plot1"
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


# Plot 1: Histogram


hist(data[, 3], col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")




