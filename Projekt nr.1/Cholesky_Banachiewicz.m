function [L] = Cholesky_Banachiewicz(A)
sz = size(A);
n = sz(1);
L = zeros(n);

for  j = 1:n
    for i = 1:n
        if i==j
           L(i,j) = sqrt ( A ( i , i ) - sum(L( i  , 1 : i - 1 ).^2) ) ;
        elseif( j > i )
           L1 = L(i,1:end);
           L2 = L(j,1:end);
           L(j,i) = (A( j , i) - sum(L2.*L1))/L( i , i );       
        end
    end
end
return;