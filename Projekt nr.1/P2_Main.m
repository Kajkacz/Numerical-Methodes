n =10 ; % initial value of i
i = 1;
% Errors for each set of data for given n
R1 = zeros( 2,20 ); 
R2 = zeros( 2,20 );
R3 = zeros( 2,20 );
%Timers
tic
t1 = toc;
t = toc;

while(t - t1 <180 )
    t1 = t;
    t = toc;
    %Factorization of first set of data
    
    [ A , B ] = generateA(n);
    
    X = Cholesky_Solve(A,B);
    
    R1(1,i) = sqrt(sum((A*X -B).^2));
    R1(2,i) = n;
    %Factorization of second set of data
    
    [ A , B ] = generateB(n);
    
    X = Cholesky_Solve(A,B);
    
    R2(1,i) = sqrt(sum((A*X -B).^2));
    R2(2,i) = n;
    
    %Factorization of third set of data
    
    [ A , B ] = generateC(n);
    
    X = Cholesky_Solve(A,B);
    
    R3(1,i) = sqrt(sum((A*X -B).^2));
    R3(2,i) = n;
    
    i = i+1;
    n = 10*i^2;
    disp(i);
    disp(t - t1);
end
disp(R1);
plot(R1(1),R1(2));
plot(R2(1),R2(2));
plot(R3(1),R3(2));