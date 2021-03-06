%Funkcja przeprowadzająca faktoryzację metodą Cholesky'ego-Banachiewicza
function [L] = Cholesky_Banachiewicz(A)
sz = size(A); %Informację o n pobieramy bezpośrednio z macierzy przekazanej
n = sz(1);
L = zeros(n);%Inicjalizujemy L zerami

for  j = 1:n
    for i = 1:n
        if i==j %Wartości poszczególnych elementów L są obliczane zgodnie ze wzorami ze skryptu
           L(i,j) = sqrt ( A ( i , i ) - sum(L( i  , 1 : i - 1 ).^2) ) ;
        elseif( j > i )
           L1 = L(i,1:end); % Pomocnicze macierze, pojedyncze wiersze używane w algorytmie - jako że nie miałem wcześniej doświadczenia z MatLabem pozostawiam je w takiej formie, uprzednio wprowadziłem je celem zdebugowania programu
           L2 = L(j,1:end);
           L(j,i) = (A( j , i) - sum(L2.*L1))/L( i , i );       
        end
    end
end
return;