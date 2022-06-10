function x = dotproduct(v,w)
if(nargin < 2)
    w = v;
end
x = sum(v .* w);
end