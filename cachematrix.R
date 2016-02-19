##Function that takes on a matrix as an argument and prepares a list of functions
##defined within it. It can calculate the inverse of the matrix when one calls
##the specific part of makeCachematrix and stores it. 
makeCachematrix <- function(x = matrix()){
    inv <- NULL
    set <- function(y = matrix()){
        x <<- y
        inv <<- NULL
    }
get <- function() x
setinv <- function() inv <<- solve(x)
getinv <- function() inv
list(set = set,
     get = get,
     setinverse = setinv,
     getinverse = getinv)
}


##If the inverse of this matrix is already known, it prints that value in the
##"if" section of the algorithym. If not, it calculates it during the "else" part
##of the code.

cacheSolve <- function(x = matrix(), ...){
    inv <- x$getinv()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    } else{
    inv <- solve(x$get())
    
    print(inv)
    
}
}
