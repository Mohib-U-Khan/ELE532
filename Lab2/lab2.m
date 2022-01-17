%% Mohib Khan and Henry Nguyen
%% B1
figure(1) 
u = @(t) 1.0*(t>=0);
x = @(t) 1.5*sin(pi*t).*(u(t)-u(t-1));
h = @(t) 1.5*(u(t)-u(t-1.5))-u(t-2)+u(t-2.5);
dtau = 0.005;
tau = -1:dtau:4;
ti = 0;
tvec = -0.25:0.1:2.25;
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
    title('h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]');
    c = get(gca, 'children');
    set(gca, 'children', [c(2);c(3);c(4);c(1)]);
    subplot(2,1,2), plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t');
    ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]);
    grid;
    drawnow;
end

%% B2
figure(2)
m = @(t) u(t)-u(t-2);
n = @(t) (t+1).*(u(t+1)-u(t));
dtau = 0.005;
tau = -2:dtau:3;
ti = 0;
tvec = -1.5:0.1:3;
y = NaN*zeros(1,length(tvec));
for t = tvec
    ti = ti+1;
    mh = m(t-tau).*n(tau);
    lmh = length(mh);
    y(ti) = sum(mh.*dtau);
    subplot(2,1,1), plot(tau,n(tau),'k-',tau,m(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)], [zeros(1,lmh-1);mh(1:end-1);mh(2:end);zeros(1,lmh-1)], [0.8 0.8 0.8], 'edgecolor', 'none');
    xlabel('\tau');
    title('n(\tau) [solid], m(t-\tau) [dashed], n(\tau)m(t-\tau) [gray]');
    c = get(gca, 'children');
    set(gca, 'children', [c(2);c(3);c(4);c(1)]);
    subplot(2,1,2), plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t');
    ylabel('y(t) = \int n(\tau)m(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]);
    grid;
    drawnow;
end

%% B.3 
%% (a)
figure(3)
x1 = @(t) 0.5*(u(t-4)-u(t-6));
x2 = @(t) u(t+5)-u(t+4);
dtau = 0.005;
tau = -6:dtau:4;
ti = 0;
tvec = -2:0.1:3;
y = NaN*zeros(1,length(tvec));
for t = tvec
    ti = ti+1;
    x1h = x1(t-tau).*x2(tau);
    lx1h = length(x1h);
    y(ti) = sum(x1h.*dtau);
    subplot(2,1,1), plot(tau,x2(tau),'k-',tau,x1(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)], [zeros(1,lx1h-1);x1h(1:end-1);x1h(2:end);zeros(1,lx1h-1)], [0.8 0.8 0.8], 'edgecolor', 'none');
    xlabel('\tau');
    title('x2(\tau) [solid], x1(t-\tau) [dashed], x2(\tau)x1(t-\tau) [gray]');
    c = get(gca, 'children');
    set(gca, 'children', [c(2);c(3);c(4);c(1)]);
    subplot(2,1,2), plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t');
    ylabel('y(t) = \int x2(\tau)x1(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]);
    grid;
    drawnow;
end

%% (b)
figure(4)
y1 = @(t) 0.5*(u(t-3)-u(t-5));
y2 = @(t) u(t+5)-u(t+3);
dtau = 0.005;
tau = -6:dtau:4;
ti = 0;
tvec = -3:0.1:3;
y = NaN*zeros(1,length(tvec));
for t = tvec
    ti = ti+1;
    y1h = y1(t-tau).*y2(tau);
    ly1h = length(y1h);
    y(ti) = sum(y1h.*dtau);
    subplot(2,1,1), plot(tau,y2(tau),'k-',tau,y1(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)], [zeros(1,ly1h-1);y1h(1:end-1);y1h(2:end);zeros(1,ly1h-1)], [0.8 0.8 0.8], 'edgecolor', 'none');
    xlabel('\tau');
    title('y2(\tau) [solid], y1(t-\tau) [dashed], y2(\tau)y1(t-\tau) [gray]');
    c = get(gca, 'children');
    set(gca, 'children', [c(2);c(3);c(4);c(1)]);
    subplot(2,1,2), plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t');
    ylabel('y(t) = \int y2(\tau)y1(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]);
    grid;
    drawnow;
end

%% (h)
figure(5)
z1 = @(t) exp(t).*(u(t+2)-u(t));
z2 = @(t) exp(-2*t).*(u(t)-u(t-1));
dtau = 0.005;
tau = -4:dtau:3;
ti = 0;
tvec = -3:0.1:2;
y = NaN*zeros(1,length(tvec));
for t = tvec
    ti = ti+1;
    z1h = z1(t-tau).*z2(tau);
    lz1h = length(z1h);
    y(ti) = sum(z1h.*dtau);
    subplot(2,1,1), plot(tau,z2(tau),'k-',tau,z1(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)], [zeros(1,lz1h-1);z1h(1:end-1);z1h(2:end);zeros(1,lz1h-1)], [0.8 0.8 0.8], 'edgecolor', 'none');
    xlabel('\tau');
    title('z2(\tau) [solid], z1(t-\tau) [dashed], z2(\tau)z1(t-\tau) [gray]');
    c = get(gca, 'children');
    set(gca, 'children', [c(2);c(3);c(4);c(1)]);
    subplot(2,1,2), plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t');
    ylabel('y(t) = \int z2(\tau)z1(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]);
    grid;
    drawnow;
end

%% C.1
t = (-1:0.001:5);
figure(6);
h1 = @(t) exp(t/5).*u(t);
plot(t, h1(t));
title('h1(t) vs t');
xlabel('t');
ylabel('h1(t)');
grid;

figure(7);
h2 = @(t) (4*exp(-t/5)).*u(t);
plot(t, h2(t));
title('h2(t) vs t');
xlabel('t');
ylabel('h2(t)');
grid;

figure(8);
h3 = @(t) (4*exp(-t)).*u(t);
plot(t, h3(t));
title('h3(t) vs t');
xlabel('t');
ylabel('h3(t)');
grid;

figure(9);
h4 = @(t) 4*(exp(-t/5)-exp(-t)).*u(t);
plot(t, h4(t));
title('h4(t) vs t');
xlabel('t');
ylabel('h4(t)');
grid;

%% C.2
%For h1(t): 1/5
%For h2(t): -1/5
%For h3(t): -1
%For h4(t): -1/5 and -1

%% C.3
figure(10)
h1 = @(t) exp(t/5).*(u(t)-u(t-20));
x = @(t) sin(5*t).*(u(t)-u(t-3));
dtau = 0.005;
tau = 0:dtau:20;
ti = 0;
tvec = 0:0.1:20;
y = NaN*zeros(1,length(tvec));
for t = tvec
    ti = ti+1;
    h1h = h1(t-tau).*x(tau);
    lh1h = length(h1h);
    y(ti) = sum(h1h.*dtau);
    subplot(2,1,1), plot(tau,x(tau),'k-',tau,h1(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)], [zeros(1,lh1h-1);h1h(1:end-1);h1h(2:end);zeros(1,lh1h-1)], [0.8 0.8 0.8], 'edgecolor', 'none');
    xlabel('\tau');
    title('x(\tau) [solid], h1(t-\tau) [dashed], x(\tau)h1(t-\tau) [gray]');
    c = get(gca, 'children');
    set(gca, 'children', [c(2);c(3);c(4);c(1)]);
    subplot(2,1,2), plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t');
    ylabel('y(t) = \int x(\tau)h1(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 10.0]);
    grid;
    drawnow;
end

figure(11)
h2 = @(t) (4*exp(-t/5)).*(u(t)-u(t-20));
x = @(t) sin(5*t).*(u(t)-u(t-3));
dtau = 0.005;
tau = 0:dtau:20;
ti = 0;
tvec = 0:0.1:20;
y = NaN*zeros(1,length(tvec));
for t = tvec
    ti = ti+1;
    h2h = h2(t-tau).*x(tau);
    lh2h = length(h2h);
    y(ti) = sum(h2h.*dtau);
    subplot(2,1,1), plot(tau,x(tau),'k-',tau,h2(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)], [zeros(1,lh2h-1);h2h(1:end-1);h2h(2:end);zeros(1,lh2h-1)], [0.8 0.8 0.8], 'edgecolor', 'none');
    xlabel('\tau');
    title('x(\tau) [solid], h2(t-\tau) [dashed], x(\tau)h2(t-\tau) [gray]');
    c = get(gca, 'children');
    set(gca, 'children', [c(2);c(3);c(4);c(1)]);
    subplot(2,1,2), plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t');
    ylabel('y(t) = \int x(\tau)h2(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]);
    grid;
    drawnow;
end

figure(12)
h3 = @(t) (4*exp(-t)).*(u(t)-u(t-20));
x = @(t) sin(5*t).*(u(t)-u(t-3));
dtau = 0.005;
tau = 0:dtau:20;
ti = 0;
tvec = 0:0.1:20;
y = NaN*zeros(1,length(tvec));
for t = tvec
    ti = ti+1;
    h3h = h3(t-tau).*x(tau);
    lh3h = length(h3h);
    y(ti) = sum(h3h.*dtau);
    subplot(2,1,1), plot(tau,x(tau),'k-',tau,h3(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)], [zeros(1,lh3h-1);h3h(1:end-1);h3h(2:end);zeros(1,lh3h-1)], [0.8 0.8 0.8], 'edgecolor', 'none');
    xlabel('\tau');
    title('x(\tau) [solid], h3(t-\tau) [dashed], x(\tau)h3(t-\tau) [gray]');
    c = get(gca, 'children');
    set(gca, 'children', [c(2);c(3);c(4);c(1)]);
    subplot(2,1,2), plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t');
    ylabel('y(t) = \int x(\tau)h3(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]);
    grid;
    drawnow;
end

figure(13)
h4 = @(t) 4*(exp(-t/5)-exp(-t)).*(u(t)-u(t-20));
x = @(t) sin(5*t).*(u(t)-u(t-3));
dtau = 0.005;
tau = 0:dtau:20;
ti = 0;
tvec = 0:0.1:20;
y = NaN*zeros(1,length(tvec));
for t = tvec
    ti = ti+1;
    h4h = h4(t-tau).*x(tau);
    lh4h = length(h4h);
    y(ti) = sum(h4h.*dtau);
    subplot(2,1,1), plot(tau,x(tau),'k-',tau,h4(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)], [zeros(1,lh4h-1);h4h(1:end-1);h4h(2:end);zeros(1,lh4h-1)], [0.8 0.8 0.8], 'edgecolor', 'none');
    xlabel('\tau');
    title('x(\tau) [solid], h4(t-\tau) [dashed], x(\tau)h4(t-\tau) [gray]');
    c = get(gca, 'children');
    set(gca, 'children', [c(2);c(3);c(4);c(1)]);
    subplot(2,1,2), plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t');
    ylabel('y(t) = \int x(\tau)h4(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]);
    grid;
    drawnow;
end

%From the equations of h2(t) and h3(t) it is evident that 
%h4(t) = h2(t) - h3(t). Using this equation we can determine the
%relationship between the outputs of S2, S3, and S4.
%S2 - S3 = h2(t-tau)x(tau) - h3(t-tau)x(tau)  = x(tau)(h2(t-tau)-h3(t-tau))
% = x(tau)h4(t-tau) = S4
%Therefore it is proven that S4 = S2 - S3 just like how the graphs were
%originally related.
%h3(t)