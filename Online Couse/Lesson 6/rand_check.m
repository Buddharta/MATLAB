function rand_check(N)
list = rand(1,N); %asigns a row vector of lenght N of random numbers less than 1
for x = list
    if(x > 0.5)
        fprintf("%f is a lange random number\n",x)
    else
        fprintf("%f is a small random number\n",x)
    end
end
