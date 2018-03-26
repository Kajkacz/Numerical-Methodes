%Generating set of data a)
function [A,B] = generateA(n)
A = zeros( n );

for  i = 1:n
    for j = 1:n
        if i==j
            A( i , j ) = 10;
        elseif i == j - 1 || j == i - 1
            A( i , j ) = 2.5;
        end
    end
end

B = zeros( n , 1 );

for i = 1 : n
    B(i) = 4 - 0.5 * i;
end

