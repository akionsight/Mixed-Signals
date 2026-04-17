clc;
clear all;
close all;

% Unit Ramp signal in Discrete Time

n = -10 : 1 : 10;
u = zeros(1, length(n));
for i = 1 : length(n)
    if n(i) >= 0
        u(i) = n(i);
    else 
        u(i) = 0;
    
    end
end

stem(n, u, 'r', LineWidth=3)

xlabel('Time (s)')
ylabel('Amplitude')
title('Discrete Time Unit Ramp Signal')