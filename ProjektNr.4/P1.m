%% Given of the project %%
step = 0.2 ;
start = 0;
range = 20;

max = range/step + 1;
y1 = zeros(max,4);
y2 = zeros(max,4);

F1 = @(x1,x2) x2 + x1*(0.9 - x1*x1 - x2*x2);   
F2 = @(x1,x2) -x1 + x2*(0.9 - x1*x1 - x2*x2);   

x1 = [10 0 8 0.001];
x2 = [8 9 0 0.001];

X = [start:step:range];

for i = 1:4
    [ y1(:,i) , y2(:,i) ] = RungyKutta(step,range,F1,F2,x1(i), x2(i));
    %[ t , y] = ode45('FF1',[0 20],[x1(i) x2(i)]);

end
    hold on
   % plot(y(:,1),y(:,2))
    plot(y1(:,i),y2(:,i))
    %plot(X,y1(:,i))
    %plot(X,y2(:,i))
    hold off
    