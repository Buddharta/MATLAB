function indices = saddle(M)
[n,m] = size(M);
indices = [];
if n > 1
    cols = min(M);          % find the min value in each column if more than 1 row
else
    cols = M;               % vector is a special case, min would give a single value
end
if m > 1
    rows = max(M');         % find the max value in each row
else
        rows = M;               % vector is a special case, max would give a single value
end
    for(ii = 1:n)
        for(jj = 1:m)
            greater = (M(ii,jj) >= M(ii,:));
            lesser = (M(ii,jj) <= M(:,jj));
            sum_great = sum(greater);
            sum_less = sum(lesser);
            if((sum_great == m)&&(sum_less == n))
                indices = [indices ; ii, jj];
            end
        end
    end