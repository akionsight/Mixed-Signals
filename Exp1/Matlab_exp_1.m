clc;
clear all; % clear
close all;

% cos Wave Signal

f = 500
T = 1/f; % Declare Variables
t = 0:10^-6:10*T;

signal = 5*cos(2*pi*f*t + (pi/4)); % Obtain Signal

plot(t,signal, 'r', LineWidth=2) % Plot signal
xlabel('Time (s)')
ylabel('Amplitude')
title('Cosine wave signal')
grid on;