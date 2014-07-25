## Creating the inverse of a matrix is computationally expensive.
## It would be handy to have a function that stores a matrix and its inverse.
## This will consist of two functions.
## 1) storing the matrix and its inverse
## 2) comparing a matrix to the cache and returning either the matrix or its inverse

## This function opens the matrix. Once you see inside, the world will never
## look the same again.
## It will evaluate if it is identical to the one in the cache and if it is not,
## it will store it and its inverse.

makeCacheMatrix <- function(x = matrix()) {
  ## check to see if x is a matrix
  if(!is.matrix(x)) {                   
    stop("x is not a matrix")
  }
  ## check to see if x is the same as the cachedMatrix
  if(dim(x) == dim(cachedMatrix) && all(x == cachedMatrix)) {         
    print(x)
    ## print("inverseCachedMatrix")
    ## return(x)
  } else {
    cachedMatrix<-x
    inverseCachedMatrix<-cacheSolve(cachedMatrix)
  }

}


## This function assumes that x is a matix, and then inverts it, 
## returning the variable inverseCachedMatrix

cacheSolve <- function(x, ...) {
  ## check to see if x is a matrix
  if(!is.matrix(x)) {                   
    stop("x is not a matrix")
  }
  ## Return a matrix that is the inverse of 'x'
  ## check to see if the matrix is invertible
  
  ## invert the matrix
  inversedMatrix<<-solve(x)
}
