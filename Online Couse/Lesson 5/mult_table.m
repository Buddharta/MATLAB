function [table summa] = mult_table(n,m)

% MULT_TABLE: MULTIPLICATION TABLE
% T = mult_table(n,m) returns a n by m matrix containing the multiplication
% table of numbers going from 1 to n from 1 to m, if only one argument is 
% given, the function automatically assumes n = m.
% [T s] = mult_table(n,m) when to outputs are specified, s is the sum of
% all the elements in the multiplication table.

if(nargin == 0)
    error("error: input at least one argument");
elseif(nargin == 1)
    m = n;
end

if(~isscalar(n)||n == 0|| n ~= fix(n))
    error("error: n needs to be a non-zero integer");
elseif(~isscalar(m)||m == 0|| m ~= fix(m))
    error("error: m needs to be a non-zero integer");
end

table = (sign(n).*[1:abs(n)])' * (sign(m).*[1:abs(m)]);
if(nargout == 2)
summa = sum(table(:));
end