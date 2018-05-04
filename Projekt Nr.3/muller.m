function [x] = muller(eps, x0, imax)

% Dane wejściowe
A = [2 5 -2 3 7]; % Macierz wspolczynnikow wielominau
B = [8 15 -4 3]; % Macierz wspolczynnikow pochodnej wielomianu A
C = [24 30 -4] ; % Macierz wspolczynnikow pochodnej drugiego stopnia wielomianu A

x = zeros(imax - 1,1);
i = 1;

while abs(polyval(A,x0) ) > eps && i < imax
    
    sqr = sqrt(polyval(B,x0)^2 - 2*polyval(A,x0)*polyval(C,x0));
    
    zpl = -2*polyval(A,x0)/(polyval(B,x0) + sqr );
    zmin = -2*polyval(A,x0)/(polyval(B,x0) - sqr );
    
    if abs((polyval(B,x0) - sqr ))>abs((polyval(B,x0) + sqr ))
        x0 = x0 + zmin;
    else
        x0 = x0 + zpl;
    end
    
    x(i)=x0;
    
    i= i +1;
end
x(imax - 1) = x0;
