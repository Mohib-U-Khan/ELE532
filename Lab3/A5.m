%% Henry Nguyen and Mohib Khan
%% A.5
function [D] = A5(Dn)
n=-200:1:200;
D=Dn; 
t=(-300:1:300);
w=pi*0.1;
x=zeros(size(t));
for i = 1:length(n)
 x=x+D(i).*exp(1j*n(i)*w*t);
end

figure(13);
plot(t,x,'k')
xlabel('t(sec)');
ylabel('x(t)');
axis([-300 300 -1 2]);
title('The Reconstructed Fourier Coefficients');
grid;

