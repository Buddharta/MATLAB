function open_webpage
url = input("Enter the url: ", 's');
if(isempty(url))
    fprintf("No url entered\n");
    return;
end
search_time = datetime;
status = web(url);
if(status == 0)
    fprintf("At %s, you opened the web page at\n",search_time);
    fprintf("%s\n",url);
else
    fprintf("Could not start web browser\n");
end
[~,weekday_name] = weelday(search_time,'long');