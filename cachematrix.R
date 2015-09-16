## Below are two functions that are used to create a special object 
## that stores a matrix and caches its inverse

## The first function, makeVector creates a special "matrix", 
## which is really a list containing a function to:
  # set the value of the matrix
  # get the value of the matrix
  # set the value of the inverse
  # get the value of the inverse

makeCacheMatrix <- function(X = matrix()) {
  i <- NULL
  set <- function(y) {
    X <<- y
    i <<- NULL
  }
  get <- function() X
  setinverse <- function(solve) i <<- solve
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## The following function calculates the inverse of the special "matrix" 
## created with the above function. 
  # However, it first checks to see if the inverse has already been calculated. 
  # If so, it gets the inverse from the cache and skips the computation. 
  # Otherwise, it calculates the inverse of the matrix and sets the value 
  # of the inverse in the cache via the setinverse function.

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
