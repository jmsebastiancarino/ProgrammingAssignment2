## This pair of functions cache the inverse of matrix.  


## This function creates a special "matrix" object that can cache its inverse.

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



## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.

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
