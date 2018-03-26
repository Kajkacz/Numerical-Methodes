%Second set of data
function [A,B] = generateB(n)
A = zeros( n );

for  i = 1:n
    for j = 1:n
        if i==j
            A( i , j ) =  3*n^2 - i;
        else
            A( i , j ) = i + j +1;
        end
    end
end

B = zeros( n , 1 );

for i = 1 : n
    B(i) = 2.5 + 0.6 * i;
end