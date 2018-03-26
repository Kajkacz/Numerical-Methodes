[ A , B ] = generateB(n);
[X,k] = Gauss_Seidel( A , B, 10, 0.001 );

r = A*X - B ;

disp(r);