# The functions are very similar to the examples given  having as input 
# to the function a matrix
# It Caches the inverse of a matrix

# The usage is, as example:
# >source("assignmentweek2.R")
# >a<- makeCacheMatrix(matrix(c(1,2,3,4),c(2,2)))
# >cacheSolve(a)
# The result is:
#      [,1] [,2]
# [1,]   -2  1.5
# [2,]    1 -0.5

# The first function makeCacheMatrix creates a special matrix, that is a list
# that contains a fuction to set the value , get the value, set the value of 
# the inverse and gets the value of the invers matrix,


makeCacheMatrix<-function(x=matrix()) {
  a<-NULL
  set<-function(y){
    x<<-y
    a<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) a<<-solve
  getmatrix<-function() a
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}


# The function cacheSolve calculates the inverse of the special matrix
# reusing cached results if they are existing

cacheSolve<-function(x=matrix(),...){
  a<-x$getmatrix()
  if(!is.null(a)) {
    message("getting cached data")
    return(a)
  }
  matrix<-x$get()
  a<-solve(matrix,...)
  x$setmatrix(a)
  a
}