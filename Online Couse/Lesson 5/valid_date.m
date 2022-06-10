function valid = valid_date(year,month,day)
if(nargin == 0||nargin == 1||nargin == 2)
    valid = false;
elseif(~isscalar(day)||day < 1||31 < day|| day ~= fix(day))
    valid = false;
elseif(~isscalar(month)||month < 1||12 < month|| month ~= fix(month))
    valid = false;
elseif(~isscalar(year)||year < 1|| year ~= fix(year))
    valid = false;
elseif(month <= 7&& rem(month,2) == 0 && day == 31)
    valid = false;
elseif(month > 7&& rem(month,2) == 1 && day == 31)
    valid = false;
elseif(month == 2 && day > 29)
    valid = false;
elseif(rem(year,4) ~= 0&& month == 2 && day > 28)
    valid = false;
elseif(rem(year,4) == 0 && rem(year,100) == 0 && month == 2 && day == 29)
    if(rem(year,400)==0)
        valid = true;
    else
        valid = false;
    end
else
    valid = true
end