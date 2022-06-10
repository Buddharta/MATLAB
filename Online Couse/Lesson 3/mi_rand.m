function [a,s] = mi_rand(n,m,low,high)
a = low+rand(n,m)*(high - low);
s = sum_all(a);

function x = sum_all(M)
global v;
v = M(:);
x = sum(v);
