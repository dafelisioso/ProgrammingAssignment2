## This functions creates a matrix that can cache the invevrse and compute his inverse
## 

##This function creates a matrix that can cache the invevrse
makeCacheMatrix <- function(x = matrix()) {
i <- NULL
 set <- function(matrix){
   m<<- matrix
   i<<-NULL
 }
 get <- function(){
   m
 }
 setInverse <- function(){
   i<<- inverse
 }
 getInverse <- function(){
   i
 }
 list(set = set, get = get,
      setInverse = setInverse,
      getInverse = getInverse)
 }
}


## this  function computes the inverse of the matrix created in makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<- x$getInverse()
  if(!!is.NULL(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data) %*% data
  x$setInverse(m)
  m
        
}
