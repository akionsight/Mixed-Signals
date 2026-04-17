clc
clear all
close all

N = 10;
n = 0:N-1;

k = 0:N-1;

C = (2/N) * (cos (4 * pi * (k/N))) + (2/N) * (cos (2 * pi * (k/N))) + 1/N;

    % E = exp( ( (-sqrt(-1) * 2 * pi) / N) * (0: N-1) .* (0: N-1) );


n_changed_1 = (-25:25);

x = zeros(1, length(n_changed_1));


for m = 1:N
    x = x + C(m) * exp(1i * 2 * pi * n_changed_1 * (m-1) / N);
end



% -------------------------

n_changed_2 = (-50:50);

y = zeros(1, length(n_changed_2));


for m = 1:N
    y = y + C(m) * exp(1i * 2 * pi * n_changed_2 * (m-1) / N);
end

% ------------------------   m

figure;

title('DT periodic square wave using DTFS')

subplot(2, 1, 1)
stem(n_changed_1, x, LineWidth=2, Color='r')
title('n from -25 to 25')
ylabel('Amplitude')
xlabel('Time')
set(gca, 'YGrid', 'on', 'XGrid', 'off')
% grid minor;

subplot(2,1,2)
stem(n_changed_2, y)
title('n from -50 to 50')
ylabel('Amplitude')
xlabel('Time')
% grid minor;
set(gca, 'YGrid', 'on', 'XGrid', 'off')