function [A] = LLSPNormals (X1,Y1,n) % Program do wyliczenia aproksymaty funkcji używając serii równań normalnych
X = zeros(n); %Inicjalizujemy wartości macierzy rozwiązań
Y = zeros(n,1);
N1 = size(Y1); %Pobieramy rzmiar macierzy
N = N1(2);

for k = 1:n
    Y(k) = sum(X1.^(k-1).*Y1); % Wyliczamy wartości macierzy X i Y dla rozwiązań
        for j = 1:n
            X(k,j) = sum(X1.^(k+j-2));
        end
end
X(1,1) = N;
A = X^(-1)*Y;
A = flipud(A); %Odwracamy kolejność na potrzeby funkcji polyval
