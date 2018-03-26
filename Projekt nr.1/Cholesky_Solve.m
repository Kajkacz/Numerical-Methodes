%Funkcja realizuj¹ca rozwi¹zanie uk³adu równañ metod¹ Cholesky'ego.Jako
%wyjœcie przekazuje rozwi¹zanie X, a jako argumenty przyjmujê zadane
%macierze A i B

function [X] = Cholesky_Solve(A , B)

%Pierwszym etapem jest faktoryzacja
L = Cholesky_Banachiewicz(A);
%Nastêpnie rozwi¹zujemy Ly=B
Y = forward_Substitution(L,B);
%Z u¿yciem wyliczonych Y rozwi¹zujemy Ax=B
X = backwards_Substitution(L',Y);
