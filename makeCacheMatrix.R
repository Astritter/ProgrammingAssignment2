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