# Matrix operations
x_vect <- seq(12,2,-2)
X <- matrix(x_vect,2,3)
Y <- matrix(seq(1,4), 2,2)
Z <- matrix(seq(4,10,2),2,2)
print(t(Y))
print(t(Z))
print(Y+Z)
print(Z+Y)
# it will be error, if Y*X, because these two matrix do not have same row and column
print(Y%*%X)
print(Y*Z)
print(Z*Y)
