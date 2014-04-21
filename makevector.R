makeVector <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {   # sets x in the calling env to the passed parm
                x <<- y
                m <<- NULL
        }
        get <- function() x    # gets the vector
        setmean <- function(mean) m <<- mean  ## saves the mean in m in the passed env?
        getmean <- function() m              
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}
cachemean <- function(x, ...) {
        m <- x$getmean()        ## get the cached mean , if one exists
        if(!is.null(m)) {       
                message("getting cached data")
                return(m)      ## if a cached mean exists return it
        }
        data <- x$get()        # get the original vector
        m <- mean(data, ...)    # save the mean of the orignal vector (THIS IS m!)
        x$setmean(m)           # 
        m
}
makeCacheMatrix <- function(x) {
        
}
cacheSolve <- function(x) {
        
}