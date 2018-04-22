function [A] = LLSPNormals (X1,Y1,n)
X = zeros(n);
Y = zeros(n,1);
N1 = size(Y1);
N = N1(2);

for k = 1:n
    Y(k) = sum(X1.^(k-1).*Y1);
        for j = 1:n
            X(k,j) = sum(X1.^(k+j-2));
        end
end
X(1,1) = N;
A = X^(-1)*Y;
A = flipud(A);
