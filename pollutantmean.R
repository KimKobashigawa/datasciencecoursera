## Cousera R Programing - Assignment 1, Week 2
## Part 1:

pollutantmean <- function(directory, pollutant, id = 1:332) {
  files_list <- list.files(directory, full.names=TRUE)
  dat <- data.frame()
  for (i in id) {
    dat <-rbind(dat,read.csv(files_list[i]))
  }
  
  if(!is.null(id)) {
    dat_pollutant <- dat[,pollutant]
    mean(dat_pollutant, na.rm=TRUE)
  }
}



  