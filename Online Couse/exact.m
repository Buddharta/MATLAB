[X,Y] = meshgrid(-2:0.5:2,-2:0.5:2);
if(X.^2+Y.^2 == 0)     
    [U,V] = [0,0];
else
    U = -Y./(X.^2+Y.^2); 
    V = X./(X.^2+Y.^2);
end
hQuiver = quiver(X,Y,U,V,'b');
hQuiver.ShowArrowHead = 'off';
hQuiver.Marker = '.';
set(hQuiver,'LineWidth',1/2)