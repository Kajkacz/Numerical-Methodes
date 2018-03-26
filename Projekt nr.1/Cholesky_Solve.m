%Funkcja realizuj�ca rozwi�zanie uk�adu r�wna� metod� Cholesky'ego.Jako
%wyj�cie przekazuje rozwi�zanie X, a jako argumenty przyjmuj� zadane
%macierze A i B

function [X] = Cholesky_Solve(A , B)

%Pierwszym etapem jest faktoryzacja
L = Cholesky_Banachiewicz(A);
%Nast�pnie rozwi�zujemy Ly=B
Y = forward_Substitution(L,B);
%Z u�yciem wyliczonych Y rozwi�zujemy Ax=B
X = backwards_Substitution(L',Y);
