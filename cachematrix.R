@@ -4,12 +4,40 @@
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  j <- NULL
  ##sets the matrix
  set <- function(y){
  x <<- y
  j <<- NULL
  }
  ##gets the matrix
  get <- function()x
  ##sets inverse of matrix
  setInverse <- function(inverse) j <<- inverse
 # #gets inverse of matrix
  getInverse <- function() j 
 ## Returns list of the methods
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  j <- x$getInverse()
  if(!is.null(j)){
  message("getting cached data")
  return(j)
  }
   ## Get the matrix from object
  mat <- x$get()
   ## Calculate the inverse using matrix multiplication
  j <- solve(mat,...)
   ## Set the inverse to object
  x$setInverse(j)
  ## Returns matrix
  j
}
