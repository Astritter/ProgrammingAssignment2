# The function cacheSolve calculates the inverse of the special matrix
# reusing cached reesults if they are existing

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