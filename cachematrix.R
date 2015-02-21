##This is for final submission.

##The functions below are used to make a special "matrix
##it stores the matrix and solves for its inverse.

##This function creates a special "matrix" object
##that can cache its inverse by doing the following:
##1. It sets the values of the matrix.
##2. It gets the values of the matrix.
##3. It sets the values of the inverse matrix.
##4. It gets the values of the inverse matrix.
makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

##This function solves for the inverse of the special 
##"matrix" from the function makeCacheMatrix. It then
##displays the inverse matrix. However, before finding 
##a solution, the function first checks to see if the 
##matrix is already solved (or unchanged) and cached.
##If so it displays the message "getting cached matrix."
##Otherwise it calculates the inverse and displays the
##answer to screen.
cacheSolve <- function(x, ...) {
  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting cached matrix")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
}