Y = [-5.4606 -3.8804 -1.9699 -1.6666 -0.0764 -0.3971 -1.0303 -4.5483 -11.5280 -21.6417 -34.4458];
X = [ -5 -4 -3 -2 -1 0 1 2 3 4 5];

n = 8; %Rząd wielomianu dla którego sprawdzamy

A  = LLSP(X, Y, n);
disp(A);
A = flipud(A);
disp(A);
Ans = polyval(A,X);

disp(Ans);

figure;
plot(X,Y);
hold on;
plot(X,Ans);
hold off;