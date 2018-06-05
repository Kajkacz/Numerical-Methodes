function [y1,y2] = Adams(step,range,F1,F2,x1, x2, n )
%%%%%%%%%%%%%%
% step - step of RK algorithm
% range - in our implementation 20 by default, implemented for the
% solverness of solver
% F1, F2 - our given differentials
% x1, x2 - our given starting points
% n - number of initial iterations with Runge-Kutta algorithm
%%%%%%%%%%%%%%
endPoint = range/step;

%y1 = zeros(endPoint + 1 );
%y2 = zeros(endPoint + 1 );

b=[55/24,-59/24,37/24,-9/24];                   %table values of beta
bg=[251/720,646/720,-264/720,106/720,-19/720];

y1(1) = x1;                               % initial condition
y2(1) = x2;

m = max(5,n);

for i=1:m                              % calculation loop

    k_11 = F1(0,[y1(i), y2(i)]);
    k_21 = F2(0,[y1(i), y2(i)]);
    
    k_12 = F1(0,[y1(i) + step * k_11/2, y2(i) + k_21*step/2 ]);
    k_22 = F2(0,[y1(i) + step*k_11/2, y2(i) + k_21*step/2] );
    
    k_13 = F1(0,[y1(i) + step*k_12/2, y2(i) + k_22*step/2 ]);
    k_23 = F2(0,[y1(i) + step*k_12/2, y2(i) + k_22*step/2 ]);
   
    k_14 = F1(0,[y1(i) + step*k_13 , y2(i)+ k_23*step]);
    k_24 = F2(0,[y1(i) + step*k_13 , y2(i)+ k_23*step]);
    
    
    y1(i+1) = y1(i) + step*(k_11+2*k_12+2*k_13+k_14)/6; % main equation
    y2(i+1) = y2(i) + step*(k_21+2*k_22+2*k_23+k_24)/6;

end

for i = m+1 : endPoint
    suma1 = 0;
    suma2 = 0;
    
    for j =1:4
        suma1 = suma1 + b(j)*F1(0,[y1(i-j), y2(i-j)]);
        suma2 = suma2 + b(j)*F1(0,[y1(i-j), y2(i-j)]);
    end
    
    x10 = y1(i-1) + step*suma1;
    x20 = y2(i-1) + step*suma2;
    
    f1 = F1(0,[x10,x20]);
    f2 = F2(0,[x10,x20]);
    
    suma1 = 0;
    suma2 = 0;
    
    for j =1:3
        suma1 = suma1 + bg(j+1)*F1(0,[y1(i-j), y2(i-j)]);
        suma2 = suma2 + bg(j+1)*F2(0,[y1(i-j), y2(i-j)]);
    end
    
    y1(i) = y1(i-1) + step*suma1 + step*bg(1)*f1;
    y2(i) = y2(i-1) + step*suma2 + step*bg(1)*f2;

end