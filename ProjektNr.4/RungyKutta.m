function [y1,y2, err] = RungyKutta(step,range,F1,F2,x1, x2)
%%%%%%%%%%%%%%
% step - step of RK algorithm
% range - in our implementation 20 by default, implemented for the
% solverness of solver
% F1, F2 - our given differentials
% x1, x2 - our given starting points
%%%%%%%%%%%%%%
max = floor(range/step);                         % number of iterations

errstep = step*0.5;                       % Substep for error calculation

y1 = zeros(max,1);                        % output initialization
y2 = zeros(max,1);

y1(1) = x1;                               % initial condition
y2(1) = x2;

errY(:,1) = [x1,x2];                      % initial condition for error calculation

for i=1:max                               % calculation loop

    k_11 = F1(0,[y1(i), y2(i)]);          % calculating Runge-Kutta factors
    k_21 = F2(0,[y1(i), y2(i)]);
    
    k_12 = F1(0,[y1(i) + step * k_11/2, y2(i) + k_21*step/2 ]);
    k_22 = F2(0,[y1(i) + step*k_11/2, y2(i) + k_21*step/2] );
    
    k_13 = F1(0,[y1(i) + step*k_12/2, y2(i) + k_22*step/2 ]);
    k_23 = F2(0,[y1(i) + step*k_12/2, y2(i) + k_22*step/2 ]);
   
    k_14 = F1(0,[y1(i) + step*k_13 , y2(i)+ k_23*step]);
    k_24 = F2(0,[y1(i) + step*k_13 , y2(i)+ k_23*step]);
    
    
    y1(i+1) = y1(i) + step*(k_11+2*k_12+2*k_13+k_14)/6; % main equation for calculating output
    y2(i+1) = y2(i) + step*(k_21+2*k_22+2*k_23+k_24)/6;
    
    errTemp(:,1) = errY(:,i);
    
    for k = 1:2                         % calculating errors of methode
        
        k_11 = F1(0,errTemp(:,k));
        k_21 = F2(0,errTemp(:,k));

        k_12 = F1(0,[errTemp(1,k) + errstep * k_11/2, errTemp(2,k) + k_21*errstep/2 ]);
        k_22 = F2(0,[errTemp(1,k) + errstep*k_11/2, errTemp(2,k) + k_21*errstep/2] );

        k_13 = F1(0,[errTemp(1,k) + errstep*k_12/2,  errTemp(2,k) + k_22*errstep/2 ]);
        k_23 = F2(0,[errTemp(1,k) + errstep*k_12/2,  errTemp(2,k) + k_22*errstep/2 ]);

        k_14 = F1(0,[errTemp(1,k) + errstep*k_13 ,  errTemp(2,k)+ k_23*errstep]);
        k_24 = F2(0,[errTemp(1,k) + errstep*k_13 ,  errTemp(2,k)+ k_23*errstep]);


        errTemp(1,k+1) =errTemp(1,k)+ errstep*(k_11+2*k_12+2*k_13+k_14)/6; % main equation
        errTemp(2,k+1) =errTemp(2,k)+ errstep*(k_21+2*k_22+2*k_23+k_24)/6;
    end
 
    errY(:,i + 1) = errTemp(:,3);

end

err(:,1) = (16/15) * abs(errY(1,:) - y1');
err(:,2)= (16/15) * abs(errY(2,:) - y2');

end