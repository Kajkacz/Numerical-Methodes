function [X ,y]= newton(eps,x0, imax)

X = zeros(imax -1 , 1);
y = zeros(imax - 1,1);

i = 1;

% Dane wejściowe
A = [2 5 -2 3 7]; % Macierz wspolczynnikow wielominau
B = [8 15 -4 3]; % Macierz wspolczynnikow pochodnej wielomianu A

while abs( polyval(A,x0)) > eps && i< imax
    %polyval(A,x0 )
    %disp(x0 )
    x0 = x0 - (polyval(A,x0 )/polyval(B,x0 ));   
    X(i) = x0;
    y(i)= polyval(A,x0);
    i = i+1;
end