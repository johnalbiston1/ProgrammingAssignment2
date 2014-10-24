## These allow the cashing of the inverse of a matrix
## they allow a matrix to be created an dthen cashed alowing for quick retrival

## this function allow the matrix to be set and retrives with a get

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x<<- y
    m<<- NULL
  }
  # returns current matrix
  get<- function()x
  
  setinverse<- function(solve) m<<- solve
  getinverse <- function() m
  list (set=set, get=get,getinverse=getinverse, setinverse=setinverse)
}


## this function inverts the matrix that is created in the makecashematrix function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if (!is.null(m)){
    message("getting cached data")
    return (m)
  }
  data <-x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  return (m)
}
#end

