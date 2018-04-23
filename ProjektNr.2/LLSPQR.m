function [A] = LLSPQR(X1,Y1,n) %Wyliczanie aproksymaty funkcji z użyciem faktoryzacji QR

X =  zeros(n);
Y =  zeros(n,1);

N1 = size(Y1);
N =  N1(2);

for k = 1:n
    Y(k) = sum(X1.^(k-1).*Y1);
        for j = 1:n
            X(k,j) = sum(X1.^(k+j-2));
        end
end

X(1,1) = N;

[Q,R] = Factorize_QR(X);

A = R\Q'*Y;

A = flipud(A);