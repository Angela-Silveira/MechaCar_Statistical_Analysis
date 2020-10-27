library(dplyr)
library(jsonlite)
library(tidyverse)

mecha_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #Read in CSV

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table) #Linear regression

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table)) #Determine p-value and r-squared using summary

sc_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) #Read in CSV
total_summary <- sc_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) #Create summary table with mean,median,variance,SD
lot_summary <- sc_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create same summary table with groupby Lot

t.test(lot_summary$Mean,mu=1500) #ttest for PSI
Lot1 <- sc_table[which(sc_table$Manufacturing_Lot=="Lot1"),]
t.test(Lot1$PSI,mu=1500)
Lot2 <- sc_table[which(sc_table$Manufacturing_Lot=="Lot2"),]
t.test(Lot2$PSI,mu=1500)
Lot3 <- sc_table[which(sc_table$Manufacturing_Lot=="Lot3"),]
t.test(Lot3$PSI,mu=1500)
