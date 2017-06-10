## Best-Hospital-R-
Predicting the best Hospital from the data of last 30 days mortality rate in each hospital around all the states in US.

The data in this repo come from the Hospital Compare web site (http://hospitalcompare.hhs.gov) run by the U.S. Department of Health and Human Services. The purpose of the web site is to provide data and information about the quality of care at over 4,000 Medicare-certified hospitals in the U.S. This dataset essentially covers all major U.S. hospitals.

The Hospital Compare web site contains a lot of data and I took only a small subset for this project.

hospital-data.csv: Contains information about each hospital.

outcome.csv: Contains information about 30-day mortality and readmission rates for heart attacks, heart failure, and pneumonia for over 4,000 hospitals.

I have written 3 functions here: Best, rankhospital, rankall.

Best()
      Takes two arguments: the 2-character abbreviated name of a state and an outcome name. The function reads the outcome.csv file and returns a character vector with the name of the hospital that has the best (i.e. lowest) 30-day mortality for the specified outcomein that state. The hospital name is the name provided in the Hospital.Name variable. The outcomes canbe one of “heart attack”, “heart failure”, or “pneumonia”.
      
rankhospital()
              rankhospital that takes three arguments: the 2-character abbreviated name of a state (state), an outcome (outcome), and the ranking of a hospital in that state for that outcome (num).The function reads the outcome.csv file and returns a character vector with the nameof the hospital that has the ranking specified by the num argument.
              
rankall()
         Takes two arguments: an outcome name (outcome) and a hospital ranking(num). The function reads the outcome-of-care-measures.csv file and returns a 2-column data frame containing the hospital in each state that has the ranking specified in num.
