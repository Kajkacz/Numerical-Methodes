function ev = QR_Factorization_NoShift(A, tol, imax)
% tol - tolerancja na null elementy
% imax - górna granica iteracji

n = size(A,1);
i=1;
while i < imax & max(max(A - diag(diag(A)))) > tol
    [Q,R] = Factorize_QR(A);
    A = R*Q;
    i=i+1;
end
if i > imax
    error('Ilość iteracji przekroczyła wartość maksymalną');
end

ev = diag(A);