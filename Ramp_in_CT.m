clc;
clear all;
close all;

% Unit ramp Signal in continuous time

t = -10 : 10^-3 : 10;
ramp = zeros(1, 1:length(i));

len = 1:length(i);
len2 = len/2;

for i = 1:length(t)
    if  t(i) <= 0
        ramp(i) = 0;
    else
        ramp(i) = t(i);
    end
end

plot(t, ramp, 'r', LineWidth=3)
xlabel('Time (S)')
ylabel('Amplitude')
grid on;