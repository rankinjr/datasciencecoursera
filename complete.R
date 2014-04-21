complete <- function(directory, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        ##data <- data.frame(site=NA,complete=NA)
        data1<-data.frame()
        for( i in id ) {
                frame<-read.csv(paste(directory, sprintf("/%03d",i),".csv", sep=""))
                x<-complete.cases(frame)
                data1<-rbind(data1,data.frame(id=i,nobs=nrow(frame[x,])) )
        }
        data1
        ## Return a data frame of the form:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases
}