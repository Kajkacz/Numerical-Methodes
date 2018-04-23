function [A] = Generate_Matrix_Sym(n) %Generacja macierzy symetrycznej
A = rand(n);
A = A + transpose(A);
return