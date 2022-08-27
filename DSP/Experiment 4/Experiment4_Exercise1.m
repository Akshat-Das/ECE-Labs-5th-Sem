clc;
clear all;
close all;

b=[1 0 -1];
a=[1 -6 9];

%To find Impulse response
L = 30; % First 15 values of the impulse response 
[y n] = impz(b,a,L);
figure;
stem(y), title('Impulse Response, h[n]'); 
grid on;
xlabel('Sample Number'), ylabel('Amplitude');

%To find the direct representation
[r,p,k] = residuez(b,a);
disp('Direct Terms'), disp(k);

% To obtain The pole – zero plot
[z p k] = tf2zp(b,a); % To obtain zeros , ploes and gain constant of the system.
disp('Zeros are at'); disp(z); 
disp('poles are at'); disp(p);
zplane(b,a); % Gives the pole – zero plot

% To find the output of the system for the given input 
n = 0:100;
u = [n>=0];
x = 3*sin(n*pi/3).*u; % input signal 
y = filter(b, a, x); % o/p signal
figure;
subplot(211), plot(n,x);
subplot(212), plot(n,y);
