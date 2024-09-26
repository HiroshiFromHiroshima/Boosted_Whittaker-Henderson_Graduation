function [xhat] = bWHgraduation(y,p,lambda,m)
   n = length(y);
   I = eye(n);
   Delta = diff(I,p);
   A = inv(I+lambda*Delta'*Delta); 
   Ap = I-(I-A)^m;
   xhat = Ap*y; 
end
