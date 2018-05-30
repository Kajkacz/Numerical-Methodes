h= 2 ;                                      % step size
x = 0:h:20;                                           
F1 = @(x1,x2) x2 + x1*(0.9 - x1*x1 - x2*x2);   
F2 = @(x1,x2) -x1 + x2*(0.9 - x1*x1 - x2*x2);   
x1 = [10 0 8 0.001];
x2 = [8 9 0 0.001];
y = RungyKutta(h,x,F1,x1(1), x2(1))