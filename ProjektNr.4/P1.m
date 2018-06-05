%% Given of the project %%
%step =0.005 ;
range = 20;
step = [0.005, 0.006,0.008, 0.04 ];
tic
%max = range/step + 1;
%y1 = zeros(max,4);
%y2 = zeros(max,4);

F1 = @(t,x) x(2) + x(1)*(0.9 - x(1)*x(1) - x(2)*x(2));   
F2 = @(t,x) -x(1) + x(2)*(0.9 - x(1)*x(1) - x(2)*x(2));   

x1 = [10 0 8 0.001];
x2 = [8 9 0 0.001];

X = [0:step:range];

 for i = 1:4
%    % X_init = [x1(i) x2(i)];
    [ y1 , y2 , err] = RungyKutta(step(i),range,F1,F2, x1(i), x2(i) );
%     [ t,y_ode] = ode45(@FF1,X,X_init);
%  %   [ y1a(:,i) , y2a(:,i) ] = Adams(step,range,F1,F2, x1(i), x2(i), 5 );
% 
% hold on;
% plot(y1(:,i),y2(:,i));
% %plot(y1(:,i),y2(:,i));
% %plot( X', err(:,2));
% %plot( X', err(:,1));
% plot(y_ode(:,1),y_ode(:,2))
% hold off;
%     
end


for i = 1:4
    X_init = [x1(i) x2(i)];
 %    [ y1 , y2 ] = Adams(step(i),range,F1,F2, x1(i), x2(i), 5 );
%    [ t,y_ode] = ode45(@FF1,X,X_init);
%     f = figure('visible','off');
%     title('Trajectory Adams');
%     hold on;
%     plot(y1,y2)
%     hold off;
%     print(f, ['IMG\ADAMS_' int2str(i) '_' num2str(step1) '_' num2str(step2) '.png'], '-dpng');
end
t=toc