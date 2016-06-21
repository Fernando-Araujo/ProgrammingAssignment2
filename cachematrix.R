## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverted <- NULL
  
  getMtx <- function(){                    # Function return the Matrix that you want invert
    return(x)
  }
  setInverseMtx <- function(inverse){      # Function return the inverted variable with a inverse matrix
    return(inverted <<- inverse)
    
  }
  
  getInverseMtx <- function(){             # Function return the the inverse Matrix
    return(inverted)
  }
  return(list(getMtx = getMtx, setInverseMtx = setInverseMtx,
              getInverseMtx = getInverseMtx))
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverseMtx()            # Get the inverse matrix, this can return null  
  if(!is.null(inv)){                  # check if inv variable is null 
    message("Getting Cached Data")
    return(inv)
  }
  mtx <- solve(x$getMtx(), ...)       # invert the matrix
  inv <- x$setInverseMtx(mtx)         # set the inverse matrix
  return(print(inv))                  # return a print of the inverse matrix
}

# Execute the code below, to see makeCacheMatrix and cacheSolve works 
a = makeCacheMatrix(matrix(c(1:4),2,2))
cacheSolve(a)

