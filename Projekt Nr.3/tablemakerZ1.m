imax = 11;
jmax = 9;
xb1 = bisect(11,7,10e-5,imax); %Pierwsze zero funkcji metoda bisekcji
xb2 = bisect(7,2,10e-5,imax); %Drugie zero funkcji metoda bisekcji

xs1 = secants(11,7,10e-5,imax); %Pierwsze zero funkcji metoda siecznych
xs2 = secants(7,2,10e-5,imax); %Drugie zero funkcji metoda siecznych
xb1 = xb1(1:imax - 1,1);
xb2 = xb2(1:imax - 1,1);
xs1 = xs1(1:imax - 1,1);
xs2 = xs2(1:imax - 1,1);

Label = [1:imax - 1]';
Bisect = zeros( imax + 1,jmax);
Bisect(3:end,1) = Label;
Bisect(3:end,2) = xb1; 
Bisect(3:end,3) = arrayfun(@(x) fzad(x),xb1);
Bisect(3:end,4) = xb2;
Bisect(3:end,5) = arrayfun(@(x) fzad(x),xb2);
Bisect(3:end,6) = xs1;
Bisect(3:end,7) = arrayfun(@(x) fzad(x),xs1);
Bisect(3:end,8) = xs2;
Bisect(3:end,9) = arrayfun(@(x) fzad(x),xs2);
     input.data = Bisect;
     input.dataFormat = {'%i',1,'%.4f',8};
     input.tableCaption = ['Wyniki metody Bisekcji i Siecznych'];
     input.tableLabel =  ['Wyniki metody Bisekcji i Siecznych'];
     latexTable(input);
