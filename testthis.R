## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

testmake <- function(x ) {
        m <- NULL               # local variable
        set <- function(y) {    # function will be list member
                x <<- y         # x is scoped in testmake as a parameter   
                m <<- NULL      # m is scoped as a local variable in testmake
        }
        get <- function() x     # method uses m from testmake via scoping rules
        seti <- function(solve) m <<- solve   #m from testmake via << operator
        geti <- function() m     # method returning m as free variable
        list(set = set, get = get,     # create list of functions
             seti = seti,
             geti = geti)
}
## Write a short comment describing this function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        d <- x$geti()             # local m
        if(!is.null(d)) {               # local m
                message("getting cached data")
                return(d)               # local m
        }
        data <- x$get()
        d <- solve(data, ...)           # local m
        x$seti(d)
        d                               # local m
}
cacheone <- function(x) {
        m<-x
        getm<-function() m
        addm<-function(n) m<<- m+n
        list(getm=getm,addm=addm, val=m)
}
