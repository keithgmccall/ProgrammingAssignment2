#This will take an object "makeCacheMatrix" and first check
#if there is already an inverse made. If so, then it will
#return the cached inverse. Otherwise, it will calculate
#the inverse and store it. 

cachesolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i<- solve(data, ...)
        x$setinverse(i)
        i
}