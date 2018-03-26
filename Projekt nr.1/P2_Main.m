n = 30000; %Input value - number of equations

%Factorization of first set of data

[ A , B ] = generateA(n);

L = Cholesky_Banachiewicz(A);

Y = forward_Substitution(L,B);

X = backwards_Substitution(L',Y);

disp(X);

%Factorization of second set of data

[ A , B ] = generateB(n);

L = Cholesky_Banachiewicz(A);

Y = forward_Substitution(L,B);

X = backwards_Substitution(L',Y);

disp(X);

%Factorization of third set of data

[ A , B ] = generateC(n);

L = Cholesky_Banachiewicz(A);

Y = forward_Substitution(L,B);

X = backwards_Substitution(L',Y);

disp(X);