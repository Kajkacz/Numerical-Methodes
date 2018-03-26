%Funkcja realizuje rozwi¹zanie uk³adu równañ metod¹ Gaussa-Seidela.Jako
%parametry wyjœciowe zwraca rozwi¹zanie uk³adu X oraz iloœæ iteracji k.Jako
%parametry podajemy macierze zadane A i B oraz b³¹d przybli¿enia delta

function [X,k] = Gauss_Seidel(A,B,n,delta)
k = 1 ;
%Funkcja pomocnicza rozk³ada macierz zadan¹ na czêœci pierwsze
[L, D, U] = decompose(A);

%Inicjalizujemy X zerami
X = zeros(n , 1);
%Pomocnicza macierz przechowuj¹ca X z poprzedniej iteracji
X1 = ones(n , 1);
%Sprawdzamy warunek wyjœciowy tj. dok³adnoœæ rozwi¹zania
while(sum(abs(X-X1)) >= delta)
    X1 = X;
    %Obliczamy pomocnicz¹ zmienn¹ W = UX-B

    W = U*X - B;
    for i = 1 : n
        %Obliczamy kolejne iteracje rozwi¹zania zgodnie z wzorem ze skryptu
       X(i) =(-W(i) - sum(L(i,1:end).*X(1,1:end)))/D(i,i) ;
    end
    k = k + 1;
end