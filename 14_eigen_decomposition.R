# eigendecomposition A=eigenvector %*% eigenValueDiagmatrix %*% eigenVector_inverse
# only square matrix

A <- matrix(c(3,1,0,2,1,0,-2,-2,1), nrow = 3)
A
eigen(A)

ev <- eigen(A)$values
evec <- eigen(A)$vectors
diag(ev)
evec %*% diag(ev) %*% solve(evec)

trans <- function(A) {
  B <- matrix(nrow = nrow(A), ncol = ncol(A))
  for(i in 1:nrow(A)) 
    for(j in 1:ncol(A))
      B[j, i] <- A[i,j]
  return(B)
}

trans(A)
A
trans(trans(A)) == A
t(A)
# symetric matrix and eigen vectors orthogonal P %*% P_inverse = E
C <- matrix(c(3,2,-2,2,1,-2,-2,-2,1), nrow=3)
C == trans(C)
