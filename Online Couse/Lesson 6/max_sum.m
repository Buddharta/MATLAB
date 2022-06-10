function [summa, index] = max_sum(v,n);
index_vector = [];
sum_vector = [];
    if(n > length(v))
        summa = 0;
        index = -1;
    else
        for j = 1:(length(v)-(n-1))
            sum_vector = [sum_vector sum(v(j:j+(n-1)))];
        end
    summa = max(sum_vector);
        for j = 1:(length(v)-(n-1))
        if(summa == sum(v(j:j+(n-1))))
        index_vector = [index_vector j];
        end
    end
    index = min(index_vector);
end