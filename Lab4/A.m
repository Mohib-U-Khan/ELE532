%% Mohib Khan
%% A.2
N = 100; PulseWidth = 10;
m = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
figure(1);
Xf = fft(x);
f = [-(N/2):1:(N/2)-1]*(1/N);
Zf = Xf.*Xf;

%% A.3
subplot(211); plot(f,fftshift( abs(Zf))); grid on;
xlabel('f');
title('z(t) Magnitude Spectrum');
subplot(212); plot(f,fftshift(angle(Zf))); grid on;
xlabel('f');
title('z(t) Phase Spectrum');

%% A.4
%% Time domain
figure(2);
u = @(t) 1.0*(t>=0);
x = @(t) 1.*(u(t)-u(t-10));
h = @(t) 1.*(u(t)-u(t-10));
dtau = 0.005;
tau = -1:dtau:25;
ti = 0;
tvec = -0.25:0.1:25;
y = NaN*zeros(1,length(tvec));
for t = tvec
    ti = ti+1;
    xh = x(t-tau).*h(tau);
    lxh = length(xh);
    y(ti) = sum(xh.*dtau);
    subplot(2,1,1), plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)], [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)], [0.8 0.8 0.8], 'edgecolor', 'none');
    xlabel('\tau');
    title('x(\tau) [solid], x(t-\tau) [dashed], x(\tau)x(t-\tau) [gray]');
    c = get(gca, 'children');
    set(gca, 'children', [c(2);c(3);c(4);c(1)]);
    subplot(2,1,2), plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    title('z(t) Time Domain');
    xlabel('t');
    ylabel('z(t) = \int x(\tau)x(t-\tau) d\tau');
    axis([tau(1) tau(end) -1 15]);
    grid;
    drawnow;
end

%% Frequency Domain
figure(3);
zf = ifft(Zf);
plot(1:length(zf), zf);
axis([-5 25 -0.1 10.1]);
xlabel('f');
title('z(t) Frequency Domain');

%The results generated using time and frequency domain operations are
%identical to the analytic result computed in A.1. The two methods used to
%generate z(t) were convolution of the time domain and multiplication of
%the frequency domain. Both results being equal proves the property of
%Fourier Transforms: x(t)*y(t) = (X(w))(Y(w))

%% A.5
N = 100; PulseWidth = 5;
m = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
Xf = fft(x);
f = [-(N/2):1:(N/2)-1]*(1/N);
figure(4);
subplot(211); plot(f,fftshift( abs(Xf))); grid on;
xlabel('f');
title('Magnitude Spectrum of x(t) with pulse width 5');
subplot(212); plot(f,fftshift(angle(Xf))); grid on;
xlabel('f');
title('Phase Spectrum of x(t) with pulse width 5');

N = 100; PulseWidth = 25;
m = [0:1:(N-1)];
y = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
Yf = fft(y);
f = [-(N/2):1:(N/2)-1]*(1/N);
figure(5);
subplot(211); plot(f,fftshift( abs(Yf))); grid on;
xlabel('f');
title('Magnitude Spectrum of x(t) with pulse width 25');
subplot(212); plot(f,fftshift(angle(Yf))); grid on;
xlabel('f');
title('Phase Spectrum of x(t) with pulse width 25');

%As the pulse width of the original function increases, the amplitude and
%frequency of the Fourier Transform increase. As the pulse width of the 
%original function decreases, the amplitude and frequency of the Fourier 
%Transform decrease. This is known as the time-scaling property of the
%Fourier Transform.

%% A.6
N = 100; PulseWidth = 10;
m = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
wp = x.*exp(1j.*(pi/3).*t);
wm = x.*exp(-1j.*(pi/3).*t);
wc = x.*cos((pi/3).*t);
WPf = fft(wp);
WMf = fft(wm);
WCf = fft(wc);
f = [-(N/2):1:(N/2)-1]*(1/N);
figure(6);
subplot(211); plot(f,fftshift( abs(WPf))); grid on;
xlabel('f');
title('Magnitude Spectrum of wp(t)');
subplot(212); plot(f,fftshift(angle(WPf))); grid on;
xlabel('f');
title('Phase Spectrum of wp(t)');
figure(7);
subplot(211); plot(f,fftshift( abs(WMf))); grid on;
xlabel('f');
title('Magnitude Spectrum of wm(t)');
subplot(212); plot(f,fftshift(angle(WMf))); grid on;
xlabel('f');
title('Phase Spectrum of wm(t)');
figure(8);
subplot(211); plot(f,fftshift( abs(WCf))); grid on;
xlabel('f');
title('Magnitude Spectrum of wc(t)');
subplot(212); plot(f,fftshift(angle(WCf))); grid on;
xlabel('f');
title('Phase Spectrum of wc(t)');

%When the original function was multiplied with a complex multiple, there
%was a shift in frequency. This property is known as the frequency shift
%property of the Fourier Transform. The property is as follows: 
%x2(t) = exp(jw0t)*x1(t)---> X2(jw) = X1(j(w-w0))