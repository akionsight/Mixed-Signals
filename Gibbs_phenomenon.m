close all
clear all
%% Practical 25/02/2026

% Write a MATLAB program to observe gibbs phenomenon  of CTFS
% representation of a periodic square wave.

% Generate f(t) = summation -n to n( Cn e^jnw.t)
% Cases N= 5, 50 & 500, observe the differences.

% TO find Cn, use fourier series analysis equation.
% 1/T integrate (f(t) e^-jnwt dt)
t = -5:10^-4:5;

f1 = zeros(1, length(t));
f2 = zeros(1, length(t));
f3 = zeros(1, length(t));



n = -500:1:500;
Cn = 2*(sin(n*pi/2))./ (n*pi);

for k = 1:1:length(n)
    if n(k) ~= 0
        f1 = f1 + (Cn(k) * exp(sqrt(-1) * n(k) * pi * (t/2)));
    else
        f1 = f1+0;
    end
    
    
end


n = -50:1:50;
Cn = 2*(sin(n*pi/2))./ (n*pi);

for k = 1:1:length(n)
    if n(k) ~= 0
        f2 = f2 + (Cn(k) * exp(sqrt(-1) * n(k) * pi * (t/2)));
    else
        f2 = f2+0;
    end


end


n = -5:1:5;
Cn = 2*(sin(n*pi/2))./ (n*pi);

for k = 1:1:length(n)
    if n(k) ~= 0
        f3 = f3 + (Cn(k) * exp(sqrt(-1) * n(k) * pi * (t/2)));
    else
        f3 = f3+0;
    end


end

figure;

subplot(3,1, 1)
plot(t, f1)
title('n = 1000')
grid on;

subplot(3,1, 2)
plot(t, f2)
title(" n = 100")
grid on;

subplot(3, 1, 3)
plot(t, f3)
title("n = 10")
grid on;