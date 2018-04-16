function [M] = Generate_Symetrical (n)
M = rand(n);
M = M + M';
return;