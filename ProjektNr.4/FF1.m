function y = FF1(x1,x2)
y(1,1) =  x2 + x1.*(0.9 - x1*x1 - x2*x2); 
y(2,1) =  -x1 + x2.*(0.9 - x1*x1 - x2*x2);
