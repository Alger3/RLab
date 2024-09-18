myFirstRFunc <- function(n){
  stopifnot(is.numeric(n),n>=0,n%%1==0)
  s <- 0
  for(i in 2:n-1){
    if(i %% 2 == 0) {
      s <- s + i
    }else if (i %% 7 == 0) {
      s <- s + i
    }
  }
  return (s)
}

print(myFirstRFunc(1000))
