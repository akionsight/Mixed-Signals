clc;
clear all;
close all;

% Unit Impulse Signal

t = -10 : 10^-3 : 10;
del = zeros(size(t));

for i = 1:length(t)
    if  (-10^-3 < t(i)) && (t(i) < 10^-3)
        del(i) = 2 * 10^3;
    else
        del(i) = 0;
    end
end

plot(t, del, 'r', LineWidth=3)
xlabel('Time (s)')
ylabel('Amplitude')
title('Unit Impulse Signal')
grid on;