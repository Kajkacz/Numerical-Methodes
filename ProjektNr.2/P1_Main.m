n = 5;

Iterations = zeros(30,9); % Macierz prczechowująca ilość iteracji

%Poniżej kolejne pętle liczące wyniki dla różnych rozmiarów macierzy

for i=1:30
    A = Generate_Matrix_Sym(n);
    [X,Iterations(i,1)] = QR_Factorization_NoShift(A,10e-6,10000);
      
    
    A = Generate_Matrix_Sym(n);
    [X,Iterations(i,2)]  = QR_Factorization_Shift(A,10e-6,10000);
    
    A = Generate_Matrix_Asym(n);
    [X,Iterations(i,3)] = QR_Factorization_Shift(A,10e-6,10000);
end

n = 10;

for i=1:30
    A = Generate_Matrix_Sym(n);
    [X,Iterations(i,4)] = QR_Factorization_NoShift(A,10e-6,10000);
    
    A = Generate_Matrix_Sym(n);
    [X,Iterations(i,5)] = QR_Factorization_Shift(A,10e-6,10000);
    
    A = Generate_Matrix_Asym(n);
    [X,Iterations(i,6)] = QR_Factorization_Shift(A,10e-6,10000);
end

n = 20;

for i=1:30   
    A = Generate_Matrix_Sym(n);
    [X,Iterations(i,7)] = QR_Factorization_NoShift(A,10e-6,10000);
    
    A = Generate_Matrix_Sym(n);
    [X,Iterations(i,8)] = QR_Factorization_Shift(A,10e-6,10000);
    
    A = Generate_Matrix_Asym(n);
    [X,Iterations(i,9)] = QR_Factorization_Shift(A,10e-6,10000);
end
AVG = mean(Iterations,1);