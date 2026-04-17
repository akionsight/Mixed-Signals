clear all;
close all;
clc;

t = -1 : 10^-3 : 1;

signal = sin(2 * pi * t);
signal_plus_2 = sin( 2 * pi * (t + 0.2));
signal_minus_2 = sin( 2 * pi * (t - 0.2));
signal_double = sin(2 * pi * (2*t));
signal_half = sin(2 * pi * (t/2));
signal_reverse = sin( 2 * pi * (-t));

figure;
subplot(3,2,1)
plot(t, signal, 'r' ,LineWidth=3)
grid on;
title('Original Signal')

subplot(3,2,2)
plot(t, signal_plus_2, 'r', LineWidth=3)
hold on
plot(t, signal, 'm', LineStyle='--')
hold off
grid on;
title('t + 0.2')

subplot(3,2,3)
plot(t, signal_minus_2, 'r', LineWidth=3)
hold on
plot(t, signal, 'm', LineStyle='--')
hold off
grid on;
title('t - 0.2')

subplot(3,2,4)
plot(t, signal_double, 'r', LineWidth=3)
hold on
plot(t, signal, 'm', LineStyle='--')
hold off
grid on;
title('2 x t')

subplot(3,2,5)
plot(t, signal_half, 'r', LineWidth=3)
hold on
plot(t, signal, 'm', LineStyle='--')
hold off
grid on;
title('t / 2')

subplot(3,2,6)
plot(t, signal_reverse, 'r', LineWidth=3)
hold on
plot(t, signal, 'm', LineStyle='--')
hold off
grid on;
title('Signal Reverse')

