function control_flow(x)
if(x == 42)
    fprintf("Congrats you found the answer to everything.\n");
elseif(x < 42)
    fprintf("Too low, try again.\n");
else
    fprintf("Too much! Try again!\n")
end