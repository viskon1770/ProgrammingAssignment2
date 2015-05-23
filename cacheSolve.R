cacheSolve <- function(x, ...) {
  
  ## check if inverse exists
  
  m <- x$getinverse()

 if(!is.null(m)) {
  message("getting cached data")
  return(m)
}

## if inverse does not exist, then calculate the inverse

  data <- x$get() ## read in the data
  
  id<-diag(nrow(data)) ## create an identity matrix having the same number of rows as the data

  inverse<-solve(data,id) ## find the inverse of the matrix
  
  x$setinverse(inverse)

  inverse ##return the inverse
}