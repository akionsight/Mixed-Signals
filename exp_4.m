%% Write a MATLAB program to find the odd and even parts of a signal.
% Odd => f(t) = -f(-t)
% Even => f(t) = f(-t)
% f(t) = f ke odd parts + f ke even parts
% f ke even parts = (f(t) + f(-t)) / 2 
% f ke odd parts = (f(t) - f(-t)) /2 

clear;
close all;
clc;

%% Unit step functions:

t = -10 : 10e-4 : 10;
unit_step_signal = zeros(1, 1:length(i));

for i = 1:length(t)
    if t(i) < 0
        unit_step_signal(i) = 0;
    elseif t(i) == 0
            unit_step_signal(i) = 1/2;
    else 
        unit_step_signal(i) = 1;

    end
end
len = length(unit_step_signal);
mid = floor(len/2) + 1;

signal_negative_part = unit_step_signal(1:mid-1);
signal_positive_part = unit_step_signal(mid:end);

reversed_signal = flip(unit_step_signal);

signal_even = (unit_step_signal + reversed_signal) / 2;
signal_odd = (unit_step_signal - reversed_signal) / 2;

%% Unit Ramp Signal

unit_ramp_signal = zeros(1, 1:length(i));

for i = 1:length(t)
    if t(i) < 0
        unit_ramp_signal(i) = 0;
    else 
        unit_ramp_signal(i) = t(i);

    end
end
len = length(unit_ramp_signal);
mid = floor(len/2) + 1;

signal_negative_part_ramp = unit_ramp_signal(1:mid-1);
signal_positive_part_ramp = unit_ramp_signal(mid:end);

reversed_signal_ramp = flip(unit_ramp_signal);

signal_even_ramp = (unit_ramp_signal + reversed_signal_ramp) / 2;
signal_odd_ramp = (unit_ramp_signal - reversed_signal_ramp) / 2;

%%

figure
subplot(3,2, 2)
plot(t, signal_even, 'r', LineWidth=3)
title('Even Part of Unit Step Signal')

subplot(3,2,3)
plot(t, signal_odd, 'r', LineWidth=3)
title('Odd Part of Unit Step Signal')

subplot(3,2,1)
plot(t, unit_step_signal, 'r', LineWidth=3)
title('Original, Unit Step Signal')


subplot(3,2, 5)
plot(t, signal_even_ramp, 'r', LineWidth=3)
title('Even Part of Unit Ramp Signal')

subplot(3,2,6)
plot(t, signal_odd_ramp, 'r', LineWidth=3)
title('Odd Part of Unit Ramp Signal')

subplot(3,2,4)
plot(t, unit_ramp_signal, 'r', LineWidth=3)
title('Original Unit Ramp Signal')



