function [L , D , U] = decompose(A)
sz = size(A);
n = sz(1);
L = zeros(n);
D = zeros(n);
U = zeros(n);

for i = 1:n
    for j= 1:n
       if(i==j)
           D( i , j ) = A(i,j);
       elseif(i<j)
           L( i , j ) = A(i,j);
       else
           U( i , j ) = A(i,j);
       end
    end
end