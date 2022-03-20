## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
    d <- NULL 
    ## setting the matrix 
    set <- function(matrix){
        m <<- matrix
        d <<- NULL
    }
    ## getting the matrix 
    get <- function(){
        m
    }
    
    setInv <- function(inverse){
        d <<- inverse 
    }
    
    getInv <- function (){
        d
    }
    
    list(set = set, get = get, setInv = setInv, getInv = getInv)
}
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInv()
        ## return the inverse if its already set
        if(!is.null(m)){
            message("getting cached data")
            return (m)
        }
        
        data <- x$get()
        ##calculate the inverse 
        m <- solve(data)
        x$setInv(m)
        ##return the matrix
        m
}
