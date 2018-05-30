%% Given of the project %%
step = 0.02 ;
start = 0;
range = 20;                                           
F1 = @(x1,x2) x2 + x1*(0.9 - x1*x1 - x2*x2);   
F2 = @(x1,x2) -x1 + x2*(0.9 - x1*x1 - x2*x2);   
x1 = [10 0 8 0.001];
x2 = [8 9 0 0.001];

X = [start:step:range];

for i = 1:4
    [ y1 , y2 ] = RungyKutta(step,range,F1,F2,x1(i), x2(i));
    [ t , y] = ode45('FF1',[0 20],[x1(i)0 x2(i)]);

end
    hold on
    plot(y(:,1),y(:,2))
    plot(X,y1)
    plot(X,y2)
    hold off