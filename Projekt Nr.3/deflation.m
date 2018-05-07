function B = deflation(A,x) % Algorytm realizujacy deflacje liniowa
    m = length(A); 
    B = zeros(1,m-1);
    B(1) = A(1); 
    for k = 1:m-2 
        B(k+1) = x*B(k) + A(k+1);
    end