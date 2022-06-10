x = -100:0.5:100;
y = -100:0.5:100;
t = complex(x,y);
U1 = exp(1/12.*(2+i).*t);
U2 = exp(1/8.*(-1+2i).*t);
U3 = exp(1/4.*(1+i).*t);
X = real(U1);
Y = imag(U1);
Z = real(U3);
plot3(X,Y,Z);

%[X,Y] = meshgrid(-10:1:100);
%t = complex(X,Y);
%U = exp(1/12.*(2+i).*t);
%Z = real(U);
%W = imag(U);
%   surf(Z);
%    surf(W)
% view(-115,114)

%t = -10:0.05:10;
%    x = exp((1/2).*t);
%    y = exp(3.*t);
%z = exp((2i+4).*t);
%x = real(z); 
%y = imag(z);
%        plot(x,y,'k')
%axis square