function coded = sugarbb(message,shift)
code = [1:length(message)];
realshift = rem(shift,95);
    for ii = 1:length(message)
        code(ii) = double(message(ii)) + realshift;
        if(code(ii) > 126)
            code(ii) = rem(code(ii),127) + 32;
        else if(code(ii) < 32)
            code(ii) = 126 - abs(code(ii)-32);
        end
    end
coded = char(code);
end