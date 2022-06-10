function coded = caesar(message,shift)
    realshift = rem(shift,126);
    code = double(message) + realshift;
    if(code > 126)
        coded = char(rem(code,126) + 32);
    else if(code < 32)
        coded = char(127 - abs(code-32));
    else
        coded = char(code);
    end
end