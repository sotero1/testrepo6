## Put comments here that give an overall description of what your
## functions do

## The make Cache Matrix makes an object and defines commands you can apply to this matrix object
## set saves the object matrix in the cache
## get retrieves the saved object matrix
## set inverse stores the inverse matrix on the cache
## get inverse retrieves the inverse matrix fromthe cache




makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  
  set <- function(y) {
    
    x <<- y
    m <<- NULL
    
    
  }
  
  get <- function() x
  
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m 
  
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
  
  # check null case 
  
}   


# x is the matrix object  
# this checks if the inverse is already in the cache
# if it is it returns the inverse   if it isn't it computes the invese and returns it




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  m <- x$getinverse()
  
  if(!is.null(m)) {
    
    message("getting cached data")
    return(m)  
    
  }
  
  # this computes the inverse if it is not already in the cache and returns it
  
  data <- x$get()
  
  m <- solve(data)
  x$setinverse(m)  
  
  m
  
  
}





