clc;
clear all;
close all;

% Unit Step Signal in continuous-time

t = -10 : 10^-3 : 10;
u = zeros(1, 1:length(i));

for i = 1:length(t)
    if t(i) > 0
        u(i) = 1;
    elseif t(i) == 0
        u(i) = 1/2;
    else
        u(i) = 0;
    end
end

plot(t, u, 'r', LineWidth=3)
xlabel('Time (s)')
ylabel('Amplitude')
title('Unit Step Signal')
grid on
