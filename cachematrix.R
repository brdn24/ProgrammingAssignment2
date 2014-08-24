## Below are two functions that create a special matrix object and cache the inverse of the matrix object. 

## The function, makeCacheMatrix, creates a special matrix object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {	
	## Set the value of the matrix
	inv <- NULL
	set <- function(matrix) {
		x <<- matrix
		inv <<- NULL
	}
	
	## Get the value of the matrix
	get <- function() x
	
	## Set the inverse of the matrix
	setInv <- function(csolve) inv <<- csolve
	
	## Get the inverse of the matrix
	getInv <- function() inv
	
	## Return the list of functions
	list(set = set, get = get, 
	setInv = setInv, getInv = getInv)
}



## The function, cacheSolve, computes the inverse of the matrix returned by the previous function, makeCacheMatrix.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        M <- x$getInv()
        
        ## If not NULL, return the inverse from the cache
        if(!is.null(M)) {
        	message("getting cached data")
        	return(M)
        }
        
        data <- x$get()
        
        ## Calculates the inverse of the matrix
        M <- solve(data, ...)

	## Store M for future retrieval
        x$setInv(M)

	## Return the inverse
        M
}
