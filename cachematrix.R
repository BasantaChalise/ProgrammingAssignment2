## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## makeCacheMatrix have following functions
## getting the matrix
## setting the inverse of the matrix if matrix is cached it will send the cached inverse matrix
##  if not cached will inverse the matrix 
## 

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set = function(y) {    ## setting matrix
    x <<- y
    m <<- NULL
  }
  get <- function() x   ## function for getting matrix
  setinverse <- function(solve) m <<- solve  ## inverse of matrix is calculated here
  getinverse <- function() m      ## returns inverse of matrix
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()   #####make data frame here 
  if(!is.null(m)) {
    message("getting cached data")   ## returns inverse from cache
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)    ## solve function calculate the inverse of matrix
  x$setinverse(m)
  m
}
