## makeCacheMatrix is to create a cache for a matrix and its inverse, 
## allows to store and retrieve these values for subsequent calls.
## useful in scenarios where the inverse of a matrix is frequently needed, 
## This caching can help avoid repeated calculations.

makeCacheMatrix <- function(x = matrix()) 
{
     cm <- NULL
     set <- function(y)
     {
     x <<- y
     cm <<- NULL
     }
     
     get <- function()x
     setInverse <- function(inverse) cm <<- inverse
     getInverse <- function() cm 
     list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


##cacheSolve function is to compute and cache the inverse of a matrix. 
##If the inverse is already cached, it retrieves the cached value; 
##otherwise, it calculates the inverse, caches it for future use, and returns the result. 

cacheSolve <- function(x, ...) 
{
## Return inverse matrix of 'x'
  cm <- x$getInverse()
  if(!is.null(cm))
    {
    message("getting cached data")
    return(cm)
    }
  mat <- x$get()
  cm <- solve(mat,...)
  x$setInverse(cm)
  j
}


