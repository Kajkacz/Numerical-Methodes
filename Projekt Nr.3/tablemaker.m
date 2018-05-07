imax = 10;
jmax = 7;

Newton = zeros( imax + 1,jmax);
j=2;
counter = 1;
for i = -6 : 0.5 : 3
 Newton(1,j) = i;
 Newton(2,j+1) = sprintf("Wartosc");
 Newton(2,j) = "Arg";
 [X,Y] = newton(10e-6,i,imax);
 Newton(3:end,j) = X;
 Newton(3:end,j+1) = Y;
 j = j+2;

 if(j>jmax)
     for i = 1: imax + 1
         Newton(i,1) = i-2;
     end
     input.data = Newton;
     input.dataFormat = {'%.3f'};
     input.tableCaption = ['Wyniki metody Newtona cz. ' num2str(counter,'%d')];
     input.tableLabel =  ['Wyniki metody Newtona cz. ' num2str(counter,'%d')];
     latexTable(input);
     Newton = zeros( imax + 1,jmax);
     j=2;
     counter = counter + 1;
 end
end

Muller = zeros( imax + 1,jmax);
j=2;
counter = 1;
for i = -6 : 0.5 : 3
 Muller(1,j) = i;
 Muller(2,j+1) = sprintf("Wartosc");
 Muller(2,j) = "Arg";
 [X,Y] = muller(10e-6,i,imax);
 Muller(3:end,j) = X;
 Muller(3:end,j+1) = Y;
 j = j+2;

 if(j>jmax)
     for i = 1: imax + 1
         Muller(i,1) = i-2;
     end
     input.data = Muller;
     input.dataFormat = {'%.3f'};
     input.tableCaption = ['Wyniki metody Mullera cz. ' num2str(counter,'%d')];
     input.tableLabel =  ['Wyniki metody Mullera cz. ' num2str(counter,'%d')];
     latexTable(input);
     Muller = zeros( imax + 1,jmax);
     j=2;
     counter = counter + 1;
 end
end
