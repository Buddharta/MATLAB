%%Examples of skippong remainder of iterations

%% Example 1 (while) without break 

ii = 1;
while(ii < length(readings)&&(readings(ii) <= 100))
    readings(ii) = 0;
    ii = ii + 1;
end

%% Example 2 (break) in a for loop

for ii = 1:length(readings)
    if(readings(ii) > 100)
        break;
    else
        readings(ii) = 0;
    end
end

%% Example 3 Other for loop with break and with print statement

for ii = 1:length(readings)
    if(readings(ii) > 100)
        fprintf("first reading above 100 is at index %d.\n",ii);
        break;
    elseif(ii == lenght(readings))
        fprintf("There are none readings above 100\n");
    end
end
