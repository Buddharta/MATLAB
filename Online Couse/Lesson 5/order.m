function x = order(a,b,c)
if(a <= b && b <= c)
    x = 1;
elseif(a >= b && b >= c)
    x = -1;
else
    x = 0;
end