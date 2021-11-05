## The makeCacheMatrix function caches the inverse of a matrix in order to save some computation
## it creates an object to store the  cached value


makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    inversa <- function(y) {
        x <<- inv(y)
        m <<- NULL
    }
    
    inversa <- function(inv) m <<- inv
    
    list(inversa = inversa)
}


## The cacheSolve function checks if the inverse is already calculated and returns the 
## inverse matrix from the cache
## 

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
