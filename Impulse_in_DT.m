clc;
clear all;
close all;

% Unit Impulse Signal in Discrete Time

n = -10 : 1 : 10;
del = zeros(1, length(n));

for i = 1:length(n)
    if (n(i)  > -10^-3) && (n(i) < 10^-3)
        del(i) = 2*10^3;
    else
        del(i) = 0;

    end
end

stem(n, del, 'r', LineWidth=3)
grid on;
xlabel('Time (s)')
ylabel('Amplitude')
title('Discrete Time Impulse Signal')