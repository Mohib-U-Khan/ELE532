%A.1
t = (-2:2);
f = @(t) (cos(2*pi*t)).*(exp(-t));
plot(t, f(t));
title('A.1 Graph 1');
xlabel('t');
ylabel('f(t)');
grid;
t = (-2:0.01:2);
g = @(t) (cos(2*pi*t)).*(exp(-t));
figure;
plot(t, g(t));
title('A.1 Graph 2');
xlabel('t');
ylabel('g(t)');
grid;

%A.2
h = @(t) exp(-t);
figure;
plot(t, h(t));
title('Graph A.2');
xlabel('t');
ylabel('h(t)');
grid;

%A.3 
%The two graphs are the same

%B.1
x = (-1:0.01:2);
p = @(x) 1.0.*((x>=0)&(x<1));
figure;
plot(x, p(x));
title('Graph B.1');
xlabel('x');
ylabel('p(x)');
grid;

%B.2
r = @(x) x.*p(x);
figure;
plot(x, r(x));
title('B.2 Graph 1');
xlabel('x');
ylabel('r(x)');
grid;
n = @(x) r(x) + r(-x + 2);
figure;
plot(x, n(x));
title('B.2 Graph 2');
xlabel('x');
ylabel('n(x)');
grid;

%B.3
n1 = @(x) n(0.5*x);
figure;
plot(x, n1(x));
title('B.3 Graph 1');
xlabel('x');
ylabel('n1(x)');
grid;
n2 = @(x) n1(x+0.5);
figure;
plot(x, n2(x));
title('B.3 Graph 2');
xlabel('x');
ylabel('n2(x)');
grid;

%B.4
n3 = @(x) n(x+0.25);
figure;
plot(x, n3(x));
title('B.4 Graph 1');
xlabel('x');
ylabel('n3(x)');
grid;
n4 = @(x) n3(0.5*x);
figure;
plot(x, n4(x));
title('B.4 Graph 2');
xlabel('x');
ylabel('n4(x)');
grid;

%B.5 
%The two graphs are the same

%C.1
f = @(t) exp(-2.*t).*cos(4*pi*t);
u = @(t) 1.0.*(t>=0);
axis([-2 2 -1 1]);
g = @(t) f(t).*u(t);
figure;
plot(t, g(t));
title('Graph C.1');
xlabel('t');
ylabel('g(t)');
grid;

%C.2
t = (0:0.01:4);
s = @(t) g(t+1);
figure;
plot(t, s(t));
title('Graph C.2');
xlabel('t');
ylabel('s(t)');
grid;

%C.3
a = [1 3 5 7];
figure;
for n = 1:4
    vecA = a(n);
    Sa = @(t) exp(-2).*exp(-t.*vecA).*cos(4*pi*t).*u(t);
    plot(t, Sa(t));
    hold on;
end
title('Graph C.3');
xlabel('t');
ylabel('Sa(t)');
grid;

%C.4
%The size of the matrix generated was 1x401

%D.1 
%a)
A(:) %States all the elements in the matrix A
%b)
A([2 4 7]) %Lists the second, fourth, and seventh elements in the array
%c)
[A>=0.2] %States the size of the matrix and outputs 1s for values greater than 0.2 and 0s for the ones less
%d)
A([A>=0.2]) %Lists all elements greater than 0.2
%e)
A([A>=0.2])=0 %Replaces all elements that are greater than 0.2 with zero

%D.2
%a)
tic
for i = 1:1024
    for j = 1:100
        if abs(B(i,j)) < 0.01
            B(i,j)=0;
        end
    end
end
toc
%b)
tic
B([abs(B)<0.01])=0;
toc
%c)
%Method a) took 0.002995 seconds and method b) took 0.000438 seconds.
%Method b) was about 10 times faster than method a).

%D.3)
y_audio = x_audio(:,:);
count = 0;
for m = 1:20000
    if y_audio(m)==0
        count = count +1;
    end
end
y_audio([abs(y_audio)<0.001])=0;
county = 0;
for m = 1:20000
    if y_audio(m)==0
        county = county +1;
    end
end
count %Zero values in original
county %Zero values in processed