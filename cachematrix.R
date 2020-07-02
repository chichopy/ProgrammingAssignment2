##This code produces the inverse of a matrix, it basically checks if that inverse
##hasn't been done before, so as to reduce running time

## The structure was mostly copied from the example given in the assignment.
## There were changes in the name of the variables

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        
        get <- function() {
                x
        }
        setinverse <- function(inversematrix) {
                m <<- inversematrix
        }
        getinverse <- function(){
                m
        }
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## The structure was mostly copy from the example given in the assignment.
## However, the code to produce the inverse of the matrix is own work.

cacheSolve <- function(x, ...) {
        
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
        
}
