## Below are two functions that are used to create a special object 
# that stores a matrix and caches its inverse

## The first function, makeVector creates a special "matrix", 
# which is really a list containing a function to:
  # set the value of the matrix
  # get the value of the matrix
  # set the value of the inverse
  # get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {

}


## The following function calculates the mean of the special "matrix" 
# created with the above function. However, it first checks to see 
# if the inverse has already been calculated. If so, it gets the inverse 
# from the cache and skips the computation. Otherwise, it calculates 
# the inverse of the matrix and sets the value of the inverse in the cache 
# via the setinverse function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
