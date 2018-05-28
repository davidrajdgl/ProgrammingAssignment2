## Put comments here that give an overall description of what your
## functions do

## creates a special "matrix", which is really a list containing a function to

# 1. set the value of the matrix
# 2. get the value of the matrix
# 3.set the value of the  inverse
# 4.get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL 
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(solve){ m <<- solve}
  getinv <- function() m 
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}


## The following function calculates the inverse of the special "matrix" created with the above function

cacheSolve <- function(x, ...) {
  m <- x$getinv()
  if(!is.null(m)){
    message('getting the cached data')
    return(m)
  }
  data <-x$get()
  m = solve(data,...)
  x$setinv(m)
  m
}
