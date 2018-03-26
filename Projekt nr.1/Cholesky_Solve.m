function [X] = Cholesky_Solve(A , B)

L = Cholesky_Banachiewicz(A);

Y = forward_Substitution(L,B);

X = backwards_Substitution(L',Y);
