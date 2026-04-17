clc;
clear all;
close all;

% Unit Step signal in Discrete Time

n = -10 : 1 : 10;
for i = 1 : length(n)
    if n(i) >= 0
        u(i) = 1;
    else 
        u(i) = 0;
    
    end
end

stem(n, u, 'r', LineWidth=3)

xlabel('Time (s)')
ylabel('Amplitude')
title('Discrete Time Unit Step Signal')