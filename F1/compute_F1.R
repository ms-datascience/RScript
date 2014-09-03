# In this script, we compute the micro-averaged F1 and macro-averaged F1 in multi-class classfication

# Basically, it computes the following measures:
# 1. Accuracy
# 2. Precision and Recall for binary classification
# 3. F1 for binary classification
# 4. Micro-averaged F1 for multi-class classification
# 5. Macro-averaged F1 for multi-class classification

#=============== Functions for both multi-class and binary-class classification ===============

# This function computes the accuracy, and the input is a general k-by-k matrix, where
# k is the number of classes
# We use G to denote its usage in the general setting
accuracyG<-function(M) {
  a = sum(diag(M)) / sum(M)
  
  return(a)
}

#=============== Functions for binary-class classification ===============

# This function computes the recall
# the input is a 2-by-2 confusion matrix
# M[1,1]: the sample # which are true class 1 and also predicted as class 1
# M[1,2]: the sample # which are true class 1 but predicted as class 2
recall_binary<-function(M) {
  r = M[1,1] / sum(M[1,])
  
  return(r)
}

# This function computes the precision, and the input is a 2-by-2 confusion matrix
precision_binary<-function(M) {
  p = M[1,1] / sum(M[,1])
  
  return(p)
}

# This function computes the F1 for binary classification, and the input is a 2-by-2 confusion matrix
F1_binary<-function(M) {
  p = precision(M)
  r = recall(M)
  f = 2 * p * r / (p+r)
  return(f)
}

#=============== Functions for multi-class classification ===============

# This function computes recall for multi-class learning problem
# The input is a k-by-k confusion matrix
# The output is a vector of length k
recall_multi<-function(M) {
  k = dim(M)[1]
  rk = rep(0, k)
  n_total = sum(M)
  for (i in 1:k) {
    M2 = matrix(0, 2, 2)
    M2[1,1] = M[i,i]
    M2[1,2] = sum(M[i,]) - M[i,i]
    M2[2,1] = sum(M[,i]) - M[i,i]
    M2[2,2] = n_total - M2[1,1] - M2[1,2] - M[2,1]
    
    r2 = recall_binary(M2)
    rk[i] = r2
  }
  return(rk)
}

# This function computes precision for multi-class learning problem
# The input is a k-by-k confusion matrix
# The output is a vector of length k
precision_multi<-function(M) {
  k = dim(M)[1]
  pk = rep(0, k)
  n_total = sum(M)
  for (i in 1:k) {
    M2 = matrix(0, 2, 2)
    M2[1,1] = M[i,i]
    M2[1,2] = sum(M[i,]) - M[i,i]
    M2[2,1] = sum(M[,i]) - M[i,i]
    M2[2,2] = n_total - M2[1,1] - M2[1,2] - M[2,1]
    
    p2 = precision_binary(M2)
    pk[i] = p2
  }
  return(pk)
}

# This function computes F1 for multi-class learning problem
# The input is a k-by-k confusion matrix
# The output is a vector of length k
F1_multi<-function(M) {
  k = dim(M)[1]
  fk = rep(0, k)
  n_total = sum(M)
  for (i in 1:k) {
    M2 = matrix(0, 2, 2)
    M2[1,1] = M[i,i]
    M2[1,2] = sum(M[i,]) - M[i,i]
    M2[2,1] = sum(M[,i]) - M[i,i]
    M2[2,2] = n_total - M2[1,1] - M2[1,2] - M[2,1]
    
    f1 = F1_binary(M2)
    fk[i] = f1
  }
  return(fk)
}

# This function computes macro-averaged F1 for multi-class learning problem
# The input is a k-by-k confusion matrix
# The output is a scalar
macroF1 <-function(M) {
  fk = F1_multi(M)
  return(mean(fk)) 
}


# This function computes micro-averaged F1 for multi-class learning problem
# The input is a k-by-k confusion matrix
# The output is a scalar
macroF1 <-function(M) {
  fk = F1_multi(M)
  return(mean(fk)) 
}



M = matrix(0, 3, 3)
M[1,] = c(10, 8, 2)
M[2,] = c(15, 50, 5)
M[3,] = c(0, 3, 7)
M1 = matrix(0, 2, 2)
M2 = matrix(0, 2, 2)
M3 = matrix(0, 2, 2)
M1[1,] = c(10,10)
M1[2,] = c(15, 65)
M2[1,] = c(50, 20)
M2[2,] = c(11, 19)
M3[1,] = c(7, 3)
M3[2,] = c(7, 83)
f1 = F1(M1)
f2 = F1(M2)
f3 = F1(M3)
macroF = (f1+f2+f3)/3
Ms = M1 + M2 + M3
microF = F1(Ms)
