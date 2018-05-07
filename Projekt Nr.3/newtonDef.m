function [x,y] = newtonDef(eps,x0, imax)% Modyfikacja metody Newtona z uwzgl. deflacji liniowej

i = 1;
% Dane wejściowe
A = [2 5 -2 3 7]; % Macierz wspolczynnikow wielominau
B = polyder(A); % Macierz wspolczynnikow pochodnej wielomianu A

r = size(A) - 1;
r = r(2);
xm = x0;

x = zeros(r , 1);
y = zeros(r - 1,1);

for j = 1:r
    while abs( polyval(A,x0)) > eps && i< imax
        x0 = x0 - (polyval(A,x0 )/polyval(B,x0 ));   
        i = i+1;
    end
    A = deflation(A,x0);
    B = polyder(A);
    i = 1;
    x(j) = x0;
    y(j)= polyval(A,x0);
    x0 = xm;
end