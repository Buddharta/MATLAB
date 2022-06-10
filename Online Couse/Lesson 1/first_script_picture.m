function first_script_picture(N)
% Lets define a peculiar vector, and then plot
% a growing cosine wave versus a growing sine:

    t = 0:(.99*pi/2):N;
    x = t.*cos(t);
    y = t.*sin(t);
    plot(x,y,'k')
    axis square