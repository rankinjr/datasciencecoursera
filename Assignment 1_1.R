pollutantmean <- function(directory, pollutant, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        setwd(directory)
        ## 'pollutant' is a character vector of length 1 indicating
        ## the name of the pollutant for which we will calculate the
        ## mean; either "sulfate" or "nitrate".
        data <- data.frame(Date=NA,sulfate=NA,nitrate=NA,ID=NA)
        for( i in id ) {
                frame<-read.csv(paste(sprintf("%03d",i),".csv", sep=""))
                data <- rbind(data,frame)  
        }
        head(data)
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        
        ## Return the mean of the pollutant across all monitors list
        ## in the 'id' vector (ignoring NA values)
        
        
}