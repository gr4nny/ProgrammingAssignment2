## Creating the inverse of a matrix is computationally expensive.
## It would be handy to have a function that stores a matrix and its inverse.
## This will consist of two functions.
## 1) returning the matrix and its inverse
## 2) comparing a matrix to the cache and returning either the matrix or its inverse

## This function takes a matrix as an input and returns the matrix or its inverse
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL   ## initialize the inverse
  set <- function(y) {    ## clear the cache
          x <<- y
          inv <<- NULL
  }
  get <- function() x ## return the original matrix
  setinv <- function(solve) inv <<- solve ## calculate the inverse matrix
  getinv <- function() inv ## return the inverse matrix
  list(set = set, get = get, setinv = setinv,
       getinv = getinv)
}


## This function checks that x is a matix, and then inverts it, 
## returning the variable inverseCachedMatrix

cacheSolve <- function(x, ...) {
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- mean(data, ...)
  x$setinv(inv)
  inv
  
}
