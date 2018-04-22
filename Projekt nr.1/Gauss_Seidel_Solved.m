%Funkcja realizuje rozwi�zanie uk�adu r�wna� metod� Gaussa-Seidela.Jako
%parametry wyj�ciowe zwraca rozwi�zanie uk�adu X oraz ilo�� iteracji k.Jako
%parametry podajemy macierze zadane A i B oraz b��d przybli�enia delta

function [X,k] = Gauss_Seidel(A,B,n,delta)
k = 1 ;
%Funkcja pomocnicza rozk�ada macierz zadan� na cz�ci pierwsze
[L, D, U] = decompose(A);

%Inicjalizujemy X zerami
X = zeros(n , 1);
%Pomocnicza macierz przechowuj�ca X z poprzedniej iteracji
X1 = ones(n , 1);
%Sprawdzamy warunek wyj�ciowy tj. dok�adno�� rozwi�zania
while(sum(abs(X-X1)) >= delta)
    X1 = X;
    %Obliczamy pomocnicz� zmienn� W = UX-B
    W = U*X - B;
    for i = 1 : n
        %Obliczamy kolejne iteracje rozwi�zania zgodnie z wzorem ze skryptu
       X(i) =(-W(i) - L(i,:)*X)/D(i,i) ;
    end
    k = k + 1;
end