## First R function
add2<-function(x,y) {
        x + y
}

above10 <- function(x) {
        use <- x > 10  ## logical vector of trues and falses that are > 10
        x[use]
}

above<-function(x, n=10){
        use <- x> n
        x[use]
}

columnmean <- function(y, removeNA = TRUE){   # y is a matrix
        numcols <- ncol(y)
        means <- numeric(numcols)  ## empty initialzed to 0's
        for (i in 1:numcols) {
                means[i] <- mean(y[,i], na.rm=removeNA)
        }
        means
}

make.power <- function(n) {
        pow<- function(x) {
                x^n    # n is in make.power's scope
        }
        pow
}
cube<- make.power(3)
square<- make.power(2)

