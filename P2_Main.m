n = 10; %Input value - number of equations

%Factorization of first set of data

[ A , B ] = generateA(n);

X = Cholesky_Solve(A,B);

disp(X);

%Factorization of second set of data

[ A , B ] = generateB(n);

X = Cholesky_Solve(A,B);

disp(X);

%Factorization of third set of data

[ A , B ] = generateC(n);

X = Cholesky_Solve(A,B);

disp(X);