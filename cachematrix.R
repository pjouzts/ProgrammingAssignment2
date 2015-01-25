## Programming Assignment 2

## functions to create a matrix variable that can store its inverse
## in the matrix variable environment to avoid having to compute
## the inverse if it has already been computed

## make matrix variable with set/get variable and set/get inverse
## matrix variable enviroment will store the inverse once computed
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  ## getter function, returns makeMatrix variable
  ## note if function is defined on one line, no need for {}
  get <- function() x

  ##  store the inverse in m environment
  setinverse <- function(solve) m <<- solve
  
  ##  get the inverse stored in m
  getinverse <- function() m
  
  ## create list of the four makeMatrix functions
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## Compute the matrix inverse if not in cache, return inverser
## from cache if already computed
## pass in the matrix with its environment

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
