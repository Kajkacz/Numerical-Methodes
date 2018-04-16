function [EV] = EvNoShifts(D, tol, imax)
n = size(D,1);
i = 1;
while i < imax && max(max(D - diag(diag(D)))) > tol
    [Q1,R1] = QR(D);
    D = R1*Q1;
    i = i+1;
end
if i>imax
    error("Przekroczono wartoœæ maksymaln¹ imax")
end
EV = diag(D);