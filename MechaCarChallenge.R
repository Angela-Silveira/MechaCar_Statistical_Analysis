library(dplyr)
library(jsonlite)
library(tidyverse)

mecha_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #Read in CSV

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table) #Linear regression

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table)) #Determine p-value and r-squared using summary
