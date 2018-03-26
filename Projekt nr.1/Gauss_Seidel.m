function [X,k] = Gauss_Seidel(A,B,n,delta)
k = 1 ;
[L, D, U] = decompose(A);

X = zeros(n , 1);
X1 = ones(n , 1);
while(sum(abs(X-X1)) >= delta)
    X1 = X;
    W = U*X - B;

    for i = 1 : n
       X(i) =(-W(i) - sum(L(i,1:end).*X(1,1:end)))/D(i,i) ;
    end
    k = k + 1;
end