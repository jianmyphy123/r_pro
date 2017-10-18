B <- matrix(c(1,-1,2,3), nrow = 2)
B

def_f <- function(A) {
  D <- A[1,1]*A[2,2] - B[1,2]*B[2,1]
  return(D)
}

def_f(B)
# det(B)

inv_f <- function(A) {
  B <- matrix(nrow = 2, ncol = 2)
  B[1,1] <- A[2,2]
  B[2,2] <- A[1,1]
  B[1,2] <- -A[1,2]
  B[2,1] <- -A[2,1]
  return((1/def_f(B)) * B)
}

inv_f(B)

B%*%inv_f(B)

B%*%solve(B)
round(B%*%solve(B), 10)
