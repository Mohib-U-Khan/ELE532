%% Henry Nguyen and Mohib Khan
%% A.4
%% a)
%% x1(t):
figure(1);
n = (-5:5);
D_n = (1./(2.*pi.*(3-n))).*sin((3-n).*pi)+(1./(2.*pi.*(3+n))).*sin((3+n).*pi)+(1./(4.*pi.*(1-n))).*sin((1-n).*pi)+(1./(4.*pi.*(1+n))).*sin((1+n).*pi);
subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('\angle D_n [rad]');

%% x2(t):
figure(2);
n = (-5:5);
D_n = (1./(n.*pi)).*sin((n.*pi)/2);
subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('\angle D_n [rad]');

%% x3(t):
figure(3);
n = (-5:5);
D_n = (1./(n.*pi)).*sin((n.*pi)/4);
subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('\angle D_n [rad]');

%% b)
%% x1(t):
figure(4);
n = (-20:20);
D_n = (1./(2.*pi.*(3-n))).*sin((3-n).*pi)+(1./(2.*pi.*(3+n))).*sin((3+n).*pi)+(1./(4.*pi.*(1-n))).*sin((1-n).*pi)+(1./(4.*pi.*(1+n))).*sin((1+n).*pi);
subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('\angle D_n [rad]');

%% x2(t):
figure(5);
n = (-20:20);
D_n = (1./(n.*pi)).*sin((n.*pi)/2);
subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('\angle D_n [rad]');

%% x3(t):
figure(6);
n = (-20:20);
D_n = (1./(n.*pi)).*sin((n.*pi)/4);
subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('\angle D_n [rad]');

%% c)
%% x1(t):
figure(7);
n = (-50:50);
D_n = (1./(2.*pi.*(3-n))).*sin((3-n).*pi)+(1./(2.*pi.*(3+n))).*sin((3+n).*pi)+(1./(4.*pi.*(1-n))).*sin((1-n).*pi)+(1./(4.*pi.*(1+n))).*sin((1+n).*pi);
subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('\angle D_n [rad]');

%% x2(t):
figure(8);
n = (-50:50);
D_n = (1./(n.*pi)).*sin((n.*pi)/2);
subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('\angle D_n [rad]');

%% x3(t):
figure(9);
n = (-50:50);
D_n = (1./(n.*pi)).*sin((n.*pi)/4);
subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('\angle D_n [rad]');

%% d)
%% x1(t):
figure(10);
n = (-500:500);
D_n = (1./(2.*pi.*(3-n))).*sin((3-n).*pi)+(1./(2.*pi.*(3+n))).*sin((3+n).*pi)+(1./(4.*pi.*(1-n))).*sin((1-n).*pi)+(1./(4.*pi.*(1+n))).*sin((1+n).*pi);
subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('\angle D_n [rad]');

%% x2(t):
figure(11);
n = (-500:500);
D_n = (1./(n.*pi)).*sin((n.*pi)/2);
subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('\angle D_n [rad]');

%% x3(t):
figure(12);
n = (-500:500);
D_n = (1./(n.*pi)).*sin((n.*pi)/4);
subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('\angle D_n [rad]');

%% A.6
%% x1(t):
A5(Dn(1));

%% x2(t):
A5(Dn(2));

%% x3(t):
A5(Dn(3));