## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    inversa <- function(y) {
        x <<- inv(y)
        m <<- NULL
    }
    
    inversa <- function(inv) m <<- inv
    
    list(inversa = inversa)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$inversa()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    m <- inv(x)
    m
}
