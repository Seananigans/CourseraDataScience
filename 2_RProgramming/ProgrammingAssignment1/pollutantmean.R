pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  fctWD <- getwd()
  WD <- fctWD
  ##WD <- "/Users/seanhegarty/Desktop/DataScience/RProgramming/ProgrammingAssignment1"
  WD <- paste(WD,directory, sep="/")
  setwd(WD)
  files <- list.files(path = WD)
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  ALPHA = data.frame()
  for (i in id){
    ALPHA <- rbind(ALPHA, read.csv(files[i]))
  }
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  return(c(mean(ALPHA[,pollutant], na.rm = TRUE),setwd(fctWD)))
}
