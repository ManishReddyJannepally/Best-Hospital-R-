rankall <- function(outcome,num){
  setwd("C:/Users/janne/Desktop/New folder")
  act_data = read.csv("outcome.csv", header = TRUE, colClasses = "character", na.strings = "Not Available", stringsAsFactors = FALSE)
  my_data = act_data[,c(2,7,11,17,23)]
  
  outcomes = c("Heart attack", "Heart failure", "Pnuemonia")
  if(outcome %in% outcomes == FALSE) stop("invalid outcome")
  
  
  names(my_data) = c("Name", "State", "Heart attack", "Heart failure", "Pnuemonia")
  my_data = my_data[my_data[outcome] != "NA",]
  
  my_data[outcome] = as.numeric(unlist(my_data[outcome]))
  my_data = my_data[order(my_data$Name, decreasing = FALSE),]
  my_data = my_data[order(my_data[outcome],decreasing = FALSE),]
  
  states = my_data[,2]
  states = unique(states)
  for (st in states){
    hospital = my_data[num,]$Name
    data = data.frame("hospital" = hospital,"state" = st)
  }
  data = data[order(data$st,decreasing = FALSE),]
  data
 
}

