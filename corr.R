corr <- function(directory, threshold = 0) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        
        ## 'threshold' is a numeric vector of length 1 indicating the
        ## number of completely observed observations (on all
        ## variables) required to compute the correlation between
        ## nitrate and sulfate; the default is 0
        
        ## Return a numeric vector of correlations
        corrdata <- vector()
        for( i in 1:332 ) {
                frame<-read.csv(paste(directory, sprintf("/%03d",i),".csv", sep=""))
                x<-complete.cases(frame)
                if (nrow(frame[x,]) <= threshold) {
                        next
                }
                corrdata<-c(corrdata,cor(frame[x,"sulfate"],frame[x,"nitrate"]))
        }
        corrdata
}