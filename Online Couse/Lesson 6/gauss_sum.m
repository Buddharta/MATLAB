function sum = gauss_sum(N)
total = 0;
for n = 1:N
    total = total + n;
end
sum = total;
fprintf("The total sum equals %d\n",sum);
end