#This function with make an object that holds a matrix.
#It has functions within to make a new matrix, 
#hold the inverse to its matrix, and retrieve
#the matrix and its inverse once it is solved for

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) i <<- solve
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}
