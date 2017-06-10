rankhospital <- function(state,outcome,num){
  setwd("C:/Users/janne/Desktop/New folder")
  act_data = read.csv("outcome.csv", header = TRUE, colClasses = "character", na.strings = "Not Available", stringsAsFactors = FALSE)
  my_data = act_data[,c(2,7,11,17,23)]
  
  outcomes = c("Heart attack", "Heart failure", "Pnuemonia")
  if(outcome %in% outcomes == FALSE) stop("invalid outcome")
  
  states = my_data[,2]
  states = unique(states)
  if(state %in% states == FALSE) stop("invalid state")
  
  names(my_data) = c("Name", "State", "Heart attack", "Heart failure", "Pnuemonia")
  my_data = my_data[my_data$State == state & my_data[outcome] != "NA",]
  
  my_data[outcome] = as.numeric(unlist(my_data[outcome]))
  my_data = my_data[order(my_data$Name, decreasing = FALSE),]
  my_data = my_data[order(my_data[outcome],decreasing = FALSE),]
  
  my_data[num,]$Name
  
  
  
}

