function output = blur(img,w);
W = [-w:w];
z = length(W);
[n,m] = size(img);
output = zeros(n,m);
    for(ii = 1:n)
        for(jj = 1:m)
            X = W + ii;
            Y = W + jj;
            indx = X((0 < X)&(X <= n));
            indy = Y((0 < Y)&(Y <= m));
            Z = img(indx,indy);
            [a,b] = size(Z);
            avrg_vec = a*b;
            V = reshape(Z,[1, avrg_vec]);
            output(ii,jj) = sum(V)/avrg_vec;
        end
    end
output = uint8(output);
end