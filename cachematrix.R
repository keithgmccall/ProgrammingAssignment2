#This function with make an object that holds a matrix.
#It has functions within to make a new matrix, 
#hold the inverse to its matrix, and retrieve
#the matrix and its inverse once it is solved for

makeCacheMatrix <- function(x = matrix()) {
#makes a new object "makecacheMatrix" and sets in inverse cache to null
     i <- NULL
     #makes a new matrix and caches it
     set <- function(y) {
          x <<- y
          i <<- NULL
     }
    
     #returns the matrix 
     get <- function() x
     
     #takes a matrix input(the inverted one) from cacheSolve and sets it to the cache 
     setinverse <- function(solve) i <<- solve
     
     #returns the inverse made by cacheSolve
     getinverse <- function() i
     
     #makes a list that allows you to call each function by name
     list(set = set, get = get,
          setinverse = setinverse,
          getinverse = getinverse)
}


#This will take an object "makeCacheMatrix" and first check
#if there is already an inverse made. If so, then it will
#return the cached inverse. Otherwise, it will calculate
#the inverse and store it. 

cacheSolve <- function(x, ...) {
     #checks whether or not an inverse is already made    
     i <- x$getinverse()
     
     #if an inverse is found, then it returns it
     if(!is.null(i)) {
          message("getting cached data")
          return(i)
     }
     
     #gets the matrix and then solves for its inverse and sets it and returns it
     data <- x$get()
     i<- solve(data, ...)
     x$setinverse(i)
     i
}