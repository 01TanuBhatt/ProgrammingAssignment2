## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inver <- NULL
  set <- function(z) {
    x <<- z
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inver <<- inverse
  getinverse <- function() inver
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inver <- x$getinverse()
  if(!is.null(inver)) {
    message("getting cached data")
    return(inver)
  }
  matrix_to_invert <- x$get()
  inver <- solve(matrix_to_invert, ...)
  x$setinverse(inver)
  inv## Return a matrix that is the inverse of 'x'
}
