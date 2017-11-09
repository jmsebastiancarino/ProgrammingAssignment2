## Matrix Inversion is the reciprocal of a matrix (i.e. inversing the matrix). 
## This pair of function helps to make a cache of the matrix inversion in R particularly with the solve function. 


## makeCacheMatrix creates a special matrix that will act as a cache for the matrix.
## It stores the matrix to be inversed later on the second function. 

makeCacheMatrix <- function(x = matrix()) {
  c <- NULL
  set <- function(y) {
    x <<- y
    c <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) c <<- matrix
  getsolve <- function() c
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}



## cacheSolve computes the matrix inversion given by makeCacheMatrix. This is where the solve function is used. 

cacheSolve <- function(x, ...) {
  c <- x$getsolve()
  if(!is.null(c)) {
    message("getting cached data")
    return(c)
  }
  data <- c$get()
  c <- solve(data, ...)
  x$setsolve(c)
  c
}
   solve(c)
}
