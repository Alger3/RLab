# 1. 1.1 Q1
hSF <- Hawks %>% filter(Species=="RT",Weight>=1000) %>% select("Wing","Weight","Tail")
print(hSF)

# 1. 1.1 Q2
# there are 3 variables in hSF, show it how many columns it has
# There are 4 examples nrow(), dim(), length(rownames()), summary() or str()
# obervations: print(nrow(hSF)) 398
# dim(hSF) 398 3 dim(hSF)[1] 398 dim(hSF)[2] 3
# length(rownames(hSF)) 398
# summary(hSF) overview of the data, str(hSF) all the data and the number of rows

# 1. 1.2 Q1
