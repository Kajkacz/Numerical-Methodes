n = 5;

for i=1:30
    A = Generate_Matrix_Sym(n);
    X = QR_Factorization_NoShift(A);
    
    A = Generate_Matrix_Sym(n);
    X = QR_Factorization_Shift(A);
    
    A = Generate_Matrix_Asym(n);
    X = QR_Factorization_Asym(A);
end

n = 10;

for i=1:30
    A = Generate_Matrix_Sym(n);
    X = QR_Factorization_NoShift(A);
    
    A = Generate_Matrix_Sym(n);
    X = QR_Factorization_Shift(A);
    
    A = Generate_Matrix_Asym(n);
    X = QR_Factorization_Asym(A);
end

n = 20;

for i=1:30    A = Generate_Matrix_Sym(n);
    X = QR_Factorization_NoShift(A);
    
    A = Generate_Matrix_Sym(n);
    X = QR_Factorization_Shift(A);
    
    A = Generate_Matrix_Asym(n);
    X = QR_Factorization_Asym(A);
end