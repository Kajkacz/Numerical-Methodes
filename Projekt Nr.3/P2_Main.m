% Dane wejściowe
A = [2  -2 3 7]; % Macierz wspolczynnikow wielominau
X = [-4 : 0.1 :0 ]; % Przedział X na którym nasz wielomian ma zera rzeczywiste
Y = polyval(A,X) ; % Wartości naszego wielomianu w przedziale X

[X0,Y0] = newton(X,Y);

figure
plot(X,Y0);