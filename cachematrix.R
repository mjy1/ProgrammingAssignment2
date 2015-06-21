## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# Part 1 - call matrix, get inverse of matrix, cache 

makeCacheMatrix <- function(x = matrix()) {
  
  #set up 
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  # getting the inverse of matrix and getting it cached with the <<- symbol
  get <- function() x
  setmatrix <- function(solve) m <<- solve
  getmatrix <- function() m
  
  
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
}


## Write a short comment describing this function


#Part 2 - return matrix that was rendered before and just printing function here

cacheSolve <- function(matrix(), ...) {
  
  # if there is nothing cached - return this part 
  m <- x$getmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  # there is something cached - return this part
  matrix <- x$get()
  m <- solve(matrix, ...)
  x$setmatrix(m)
  m
}