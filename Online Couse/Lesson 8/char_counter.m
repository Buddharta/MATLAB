function charnum = char_counter(fname,character)
fid = fopen(fname,'rt');
    if((fid < 0)||~ischar(character))
        charnum = -1;
    else
        charnum = 0;
        line = fgets(fid);
        while(ischar(line))
            character_per_line = strfind(line,character);
            charnum = charnum + length(character_per_line);
            line = fgets(fid);
        end
    end
    foclose(fname);
end