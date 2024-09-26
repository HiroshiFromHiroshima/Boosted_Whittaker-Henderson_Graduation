import numpy as np
def bWHgraduation(y,p,lamb,m):
    n = len(y)
    I = np.identity(n,int)
    Delta = np.diff(I,n=p,axis=0)
    A = np.linalg.inv(I+lamb*np.dot(Delta.T,Delta))
    Ap = I-np.linalg.matrix_power(I-A,n=m)
    xhat = np.dot(Ap,y)
    return xhat
