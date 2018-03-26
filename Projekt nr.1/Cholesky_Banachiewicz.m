%Funkcja przeprowadzaj�ca faktoryzacj� metod� Cholesky'ego-Banachiewicza
function [L] = Cholesky_Banachiewicz(A)
sz = size(A); %Informacj� o n pobieramy bezpo�rednio z macierzy przekazanej
n = sz(1);
L = zeros(n);%Inicjalizujemy L zerami

for  j = 1:n
    for i = 1:n
        if i==j %Warto�ci poszczeg�lnych element�w L s� obliczane zgodnie
                %ze wzorami ze skryptu
           L(i,j) = sqrt ( A ( i , i ) - sum(L( i  , 1 : i - 1 ).^2) ) ;
        elseif( j > i )% Pomocnicze macierze, pojedyncze wiersze 
           %u�ywane w algorytmie - jako �e nie mia�em wcze�niej 
           %do�wiadczenia z MatLabem pozostawiam je w takiej formie,
           %uprzednio wprowadzi�em je celem zdebugowania programu
           L1 = L(i,1:end); 
           L2 = L(j,1:end);
           L(j,i) = (A( j , i) - sum(L2.*L1))/L( i , i );       
        end
    end
end
return;

