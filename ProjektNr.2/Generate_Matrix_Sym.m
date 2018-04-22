function [A] = Generate_Matrix_Sym(n)
A = rand(n);
A = A + transpose(A);
return