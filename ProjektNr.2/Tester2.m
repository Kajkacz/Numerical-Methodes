Y = [-5.4606 -3.8804 -1.9699 -1.6666 -0.0764 -0.3971 -1.0303 -4.5483 -11.5280 -21.6417 -34.4458];
X = [ -5 -4 -3 -2 -1 0 1 2 3 4 5];

n = 10; 

A  = LLSPNormals(X, Y, n);
Ans = polyval(A,X);

AnsPlot = polyval(A, -5:0.1:5);
disp(norm(Ans - Y));
disp(norm(Ans - Y,Inf));

figure;

hold on;
plot(X,Y ,'.');

plot(-5:0.1:5,AnsPlot,'.' );
hold off;