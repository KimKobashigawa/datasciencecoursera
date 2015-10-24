## Cousera R Programing - Assignment 1, Week 2
## Part 3:

corr <- function(directory, threshold = 0) {
  files_list <- list.files(directory, full.names=TRUE)
  
  dat <- c()
  for(i in 1:2){
    dat <- read.csv(files_list[i])
      data_complete <-complete.cases(dat)
      
      data_sum <- c(data_complete)
      subset <- data_sum[which(data_sum > threshold)]
      subset2 <- c(subset2, subset, na.rm=TRUE)
      
  }
  correlation <- cor(subset2$sulfate, subset2$nitrate, use="complete.obs")
  
  correlation
}
cr <- corr("specdata", 150)
#head(cr)
