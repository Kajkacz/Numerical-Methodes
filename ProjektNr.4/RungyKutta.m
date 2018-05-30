function y =RungyKutta(h,x,F,x1, x2)
y = zeros(1,length(x)); 
y(1) = 5;                                          % initial condition

for i=1:(length(x)-1)                              % calculation loop
    k_1 = F(x(i),y(i));
    k_2 = F(x(i)+0.5*h,y(i)+0.5*h*k_1);
    k_3 = F((x(i)+0.5*h),(y(i)+0.5*h*k_2));
    k_4 = F((x(i)+h),(y(i)+k_3*h));

    y(i+1) = y(i) + (1/6)*(k_1+2*k_2+2*k_3+k_4)*h;  % main equation
end