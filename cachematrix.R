## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverted <- NULL
  
  getMtx <- function(){
    return(x)
  }
  
  setInverseMtx <- function(inverse){
    return(inverted <<- inverse)
    
  }
  
  getInverseMtx <- function(){
    return(inverted)
  }
  return(list(getMtx = getMtx, setInverseMtx = setInverseMtx,
              getInverseMtx = getInverseMtx))
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverseMtx()
  if(!is.null(inv)){
    message("Getting Cached Data")
    return(inv)
  }
  mtx <- solve(x$getMtx(), ...)
  inv <- x$setInverseMtx(mtx)
  return(print(inv))
}


