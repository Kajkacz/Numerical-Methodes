imax = 10;
jmax = 5;
Muller = zeros( imax,jmax);
j=2;
for i = 1.5 :0.5: 3
 Muller(1,j) = i;
 Muller(2:end,j) = newton(10e-6,i,imax);
 j = j+1;
end

for j = 1: jmax
    Muller(imax,j) = 0;
end
for j = 1: imax
    Muller(j,1) = j-1;
end
input.data = Muller;
latexTable(input);