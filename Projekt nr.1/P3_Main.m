%Wrapper function of Seidel-Gauss problem
n = 40;
[ A , B ] = generateB(n);
[X,k] = Gauss_Seidel( A , B, n, 0.001 );

r = A*X - B ;
E = sqrt(sum(r.^2));
disp(E);

