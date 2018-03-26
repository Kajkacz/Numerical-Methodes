function [Y] = forward_Substitution(L,B)
sz = size(B);
n = sz(1);
Y = zeros(n,1);

for  i = 1:n
    Y(i) = (B(i) - sum(L(i,1:i-1)*Y(1:i-1)))/L(i,i);
end
return;