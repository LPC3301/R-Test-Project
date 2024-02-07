#This is a file that will be pushed to GitHub in order to check if RStudio's Integration works or not

#Now I will add some random code in order to check if commits work
library("data.table")
library("lubridate")
library("dplyr")
library("Hmisc")

#Change the date from char to date
transactions <- transactions[, TransDate:=as_datetime(TransDate, format="%d.%m.%Y")]

#Select only the transactions later than 1975
transact_shortened <- transactions[year(TransDate) > 1975]