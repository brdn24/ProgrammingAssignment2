## Below are two functions that create a special matrix object and cache the inverse of the matrix object. 

## The function, makeCacheMatrix, creates a special matrix object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {	

	inv <- NULL
	set <- function(matrix) {
		x <<- matrix
		inv <<- NULL
	}
	
	get <- function() x
	
	setInv <- function(csolve) inv <<- csolve
	
	getInv <- function() inv
	
	list(set = set, get = get, 
	setInv = setInv, getInv = getInv)
}



## The function, cacheSolve, computes the inverse of the matrix returned by the previous function, makeCacheMatrix.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        M <- x$getInv()
        
        if(!is.null(M)) {
        	message("getting cached data")
        	return(M)
        }
        
        data <- x$get()
        
        M <- solve(data, ...)
        
        x$setInv(M)
        
        M
}
