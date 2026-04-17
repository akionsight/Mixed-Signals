clear all;
close all;
clc;
%% First We will write unit step signal

t = -1 : 10^-3 : 1;

m1 = zeros(1, length(t));


u = zeros(1, length(t));

shift1 = -0.2;
shift2 = 0.2;
shift_a = 2;
shift_b = 1/2;
shift_c = -1;


for i = 1:length(t)

    if t(i) > 0
        u(i) = 1;
    elseif t(i) == 0
        u(i) = 1/2;
    else
        u(i) = 0;
    end
end

%% Now we will apply shifts


for i = 1:length(t)

    if t(i) > -shift1
        m1(i) = 1;
    elseif t(i) == -shift1
        m1(i) = 1/2;
    else
        m1(i) = 0;
    end
end

for i = 1:length(t)

    if t(i) > -shift2
        m2(i) = 1;
    elseif t(i) == -shift2
        m2(i) = 1/2;
    else
        m2(i) = 0;
    end
end

for i = 1:length(t)

    if t(i) < 0
        m3(i) = 1;
    elseif t(i) == 0
        m3(i) = 1/2;
    else
        m3(i) = 0;
    end

end



figure;

subplot(3,2,1)
plot(t, u, 'r', LineWidth=3)
xlabel('Time (s)')
ylabel('Amplitude')
title('Original Signal')
grid on

subplot(3,2,2)

plot(t, u, 'm--', LineWidth=2)
hold on
plot(t, m1, 'r', LineWidth=3)
hold off
xlabel('Time (s)')
ylabel('Amplitude')
title('Right Shift')
grid on

subplot(3,2,3)
plot(t, u, 'm--', LineWidth=2)
hold on
plot(t, m2, 'r', LineWidth=3)
hold off
xlabel('Time (s)')
ylabel('Amplitude')
title('Left Shift')
grid on

subplot(3,2,4)
plot(t, u, 'm--', LineWidth=2)
hold on
plot(t, m3, 'r', LineWidth=3)
hold off
xlabel('Time (s)')
ylabel('Amplitude')
title('Signal Reversal')
grid on

subplot(3,2,5)
plot(t, u, 'm--', LineWidth=2)
hold on
plot(t, u, 'r', LineWidth=3)
hold off
xlabel('Time (s)')
ylabel('Amplitude')
title('Signal Doubled on time axis')
grid on


subplot(3,2,6)
plot(t, u, 'm--', LineWidth=2)
hold on
plot(t, u, 'r', LineWidth=3)
hold off
xlabel('Time (s)')
ylabel('Amplitude')
title('Signal halfed on time axis')
grid on
