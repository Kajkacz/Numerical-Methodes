
%Third set of data
function [A,B] = generateC(n)

A = zeros( n );

for  i = 1:n
    for j = 1:n
        if i==j
            A( i , j ) =  0.1 * n + 0.3 * i;
        else
            A( i , j ) = 1 / ( 6 * ( i + j +1 ) );
        end
    end
end

B = zeros( n , 1 );

for i = 1 : n
    B(i) = 5 / ( 3 * i );
end
end