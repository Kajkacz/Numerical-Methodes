%Funkcja realizuje metodê propagacji wstecznej,
%u¿ywana jest przeze mnie w algorytmie Cholesky'ego

function [X] = backwards_Substitution(L,B)
sz = size(B);
n = sz(1);
X = zeros(n,1);
X(n) = B(n)/L(n,n);
X(n-1) = (B(n-1)-L(n-1,n)*X(n))/L(n-1,n-1);
for  k = n -2 : -1 : 1
    L1 = L(k,k+1:end);
    X1 = X(k+1:n);
    X(k) = (B(k) - sum(L1.*X1'))/L(k,k);
end
return;


