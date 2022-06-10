function total = accumulate(n)
persistent summa;%The persistent tag means the variable doesn't get destroyed when the function ends
if(isempty(summa))
    summa = n;
else
    summa = summa + n;
end
total = summa;