## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(xm = matrix()) {
	ixm <- NULL;
	set <- function(x){
		xm <<- x;
		ixm <<- NULL;
	}
	get <- function() xm;
	
	setInv <- function(inv) ixm <<- inv;
	getInv <- function() ixm;
	
	list(set=set,get=get,setInv=setInv,getInv=getInv);
}


## Write a short comment describing this function

cacheSolve <- function(cm, ...) {
        
	ixm <- cm$getInv();
	if(!is.null(ixm)){
		message("getting cached data");
		return(ixm);
	}
	ixm <- solve(cm$get(),...);
	cm$setInv(ixm);
	## Return a matrix that is the inverse of 'x'
	ixm;
}
