
complete <-function(directory, id=1:332) {
  files_list <- list.files(directory, full.names = TRUE)
  
  dat <- c()
  nobs <- c()
for (i in c(id)){
  dat<-read.csv(files_list[i])
  nobs <- c(nobs,sum(complete.cases(dat)))
}

   data_table <- data.frame(id,nobs)
   print(data_table)
}