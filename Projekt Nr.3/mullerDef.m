function [x,y] = mullerDef(eps, x0, imax) % modyfikacja alg. Mullera z uwzglednieniem deflacji liniowej

% Dane wejściowe
A = [2 5 -2 3 7]; % Macierz wspolczynnikow wielominau
B = [8 15 -4 3]; % Macierz wspolczynnikow pochodnej wielomianu A
C = [24 30 -4] ; % Macierz wspolczynnikow pochodnej drugiego stopnia wielomianu A

r = size(A) - 1;
r = r(2);
xm = x0;

x = zeros(r - 1,1);
y = zeros(r - 1,1);
i = 1;
for j = 1:r
    while abs(polyval(A,x0) ) > eps && i < imax

        sqr = sqrt(polyval(B,x0)^2 - 2*polyval(A,x0)*polyval(C,x0));

        zpl = -2*polyval(A,x0)/(polyval(B,x0) + sqr );
        zmin = -2*polyval(A,x0)/(polyval(B,x0) - sqr );

        if abs((polyval(B,x0) - sqr ))>abs((polyval(B,x0) + sqr ))
            x0 = x0 + zmin;
        else
            x0 = x0 + zpl;
        end

        i= i +1;
    end
    A = deflation(A,x0);
    B = polyder(A);
    C = polyder(B);
    i = 1;
    x(j) = x0;
    y(j)= polyval(A,x0);
    x0 = xm;
end