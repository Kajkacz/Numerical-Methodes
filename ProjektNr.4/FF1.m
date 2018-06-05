function y = FF1(t,x)
y = zeros(2,1);    
y(1) =  x(2) + x(1)*(0.9 - x(1)*x(1) - x(2)*x(2));   
y(2) = -x(1) + x(2)*(0.9 - x(1)*x(1) - x(2)*x(2));   
end