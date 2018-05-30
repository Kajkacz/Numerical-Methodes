function [y1,y2] = RungyKutta(step,range,F1,F2,x1, x2)
%%%%%%%%%%%%%%
% step - step of RK algorithm
% range - in our implementation 20 by default, implemented for the
% solverness of solver
% F1, F2 - our given differentials
% x1, x2 - our given starting points
%%%%%%%%%%%%%%
y1(1) = x1;                               % initial condition
y2(1) = x2;

max = 50;% range/step;

for i=1:max                               % calculation loop

    k_11 = F1(y1(i), y2(i));
    k_21 = F2(y1(i), y2(i));

    k_12 = F1(y1(i) + step * k_11/2, y2(i) + k_21/2 );
    k_22 = F2(y1(i) + step/2, y2(i) + k_11/2 );
    
    k_13 = F1(y1(i) + step/2, y2(i) + k_12/2 );
    k_23 = F2(y1(i) + step/2, y2(i) + k_12/2 );
    
    k_14 = F1(y1(i) + step , y2(i)+ k_13);
    k_24 = F2(y1(i) + step , y2(i)+ k_13);
    
    
    y1(i+1) = y1(i) + (1/6)*step*(k_11+2*k_12+2*k_13+k_14);  % main equation
    y2(i+1) = y2(i) + (1/6)*step*(k_21+2*k_22+2*k_23+k_24);

end