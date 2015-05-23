cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  ##print(m)
 if(!is.null(m)) {
  message("getting cached data")
  return(m)
}
  data <- x$get()
  ##print("data",data)
  id<-diag(nrow(data))
  ##id<-diag(2)
  ##print(id)
  inverse<-solve(data,id)
  ##print(inverse)
  
  ##m <- mean(data, ...)
  x$setinverse(inverse)
  inverse
}