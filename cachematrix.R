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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
