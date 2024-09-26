library(expm)
bWHgraduation <- function(y,p,lambda,m){
   n <- length(y)
   I <- diag(rep(1,times=n))
   Delta <-diff(I,differences=p)
   A <- solve(I+lambda*crossprod(Delta))
   Ap <- I-(I-A)%^%m
   xhat <- Ap%*%y
   return(xhat)
}
