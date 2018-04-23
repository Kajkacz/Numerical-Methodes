function [Q,R] = Factorize_QR(A) %Funkcja realizująca faktoryzacje QR na macierzy A, zwracająca macierze Q i R
[m, n]=size(A); % Zaczynamy od ocenienia rozmiaru A i inicjalizacji odpowiednich macierzy Q, R i pomocniczej d

Q = zeros(m,n);
R = zeros(n,n);
d = zeros(1,n);

for i=1:n
    Q(:,i)=A(:,i);
    R(i,i)=1;
    d(i)=Q(:,i)'*Q(:,i);
    for j = i+1:n
        R(i,j) = (Q(:,i)'*A(:,j))/d(i);
        A(:,j) = A(:,j) - R(i,j)*Q(:,i);
    end
end

for i=1:n
    dd=norm(Q(:,i));
    Q(:,i)=Q(:,i)/dd;
    R(i,i:n)=R(i,i:n)*dd;
end
return