function [ev,iter] = QR_Factorization_Shift(A, tol, imax) %Program wyliczający aproksymatę funkcji używając rozkładu QR
% tol - tolerancja na null elementy
% imax - górna granica iteracji

n = size(A,1);
ISubmatrix = A;
ev = diag(ones(n));
iter = 0;
for k=n:-1:2,
    DK = ISubmatrix;
    i = 0;
    while i<=imax && max(abs(DK(k,1:k-1)))>tol,
        DD = DK(k-1:k,k-1:k);
        [ev1,ev2] = quadpolynroots(1,-(DD(1,1)+DD(2,2)),DD(2,2)*DD(1,1)-DD(2,1)*DD(1,2));
        if abs(ev1 -DD(2,2)) < abs(ev2 -DD(2,2))
            shift = ev1;
        else
            shift = ev2;
        end
        DP = DK - eye(k)*shift;
        [Q,R] = Factorize_QR(DP);
        DK = R*Q + eye(k)*shift;
        i = i+1;
        iter = iter+1;
    end


if i > imax
    error('Ilość iteracji przekroczyła wartość maksymalną');
end

ev(k) =DK(k,k);

if k > 2
    ISubmatrix = DK(1:k-1,1:k-1);
else
    ev(1) = DK(1,1);
end
end