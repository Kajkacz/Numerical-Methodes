%Funkcja pomocnicza s³u¿¹ca do rozk³adu macierzy zadanej przy algorytmie
%Gaussa-Seidela na 3 czêœci wymagane przy jego u¿yciu

function [L , D , U] = decompose(A)
sz = size(A);% Pobieramy n z rozmiaru macierzy
n = sz(1);
%Inicjalizujemy macierze zerami
L = zeros(n);
D = zeros(n);
U = zeros(n);

for i = 1:n
    for j= 1:n
       if(i==j)%Elementy przek¹tnej wpisywane s¹ do D
           D( i , j ) = A(i,j);
       elseif(i<j) % Elementy pod przek¹tn¹ do L
           L( i , j ) = A(i,j);
       else %Elementy nad przek¹tn¹ do U
           U( i , j ) = A(i,j);
       end
    end
end