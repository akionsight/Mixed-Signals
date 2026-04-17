close all;
clear vars;

t = -50: 10^-2: 50;
w = -10 * pi: 10^-2 :10 * pi;

f1_ = (t >= -5) & (t <= 5);
f2_ = cos (10 * t);


F1_ = zeros(1, length(w));

for k = 1: length(w)
    F1_(k) = trapz (t, f1_ .* exp(-1 * (sqrt(-1) * w(k) * t)));
end

F2_ = zeros(1, length(w));

for k = 1: length(w)
    F2_(k) = trapz (t, f2_ .* exp(-1 * (sqrt(-1) * w(k) * t)));
end

figure;

subplot(2,2,1)
plot(t, f1_,'r', LineWidth=3)
title('Rectangular Pulse Signal')
xlim([-10, 10])
ylim([0, 1.5])


subplot(2,2,2)
plot(t, f2_, 'r', LineWidth=3)
title("cos(10t) Signal")
xlim([-5, 5])
ylim([-1.5, 1.5])


subplot(2,2,3)
plot(w, F1_, "r")
title('Fourier Transform of Rect. Pulse Signal')

subplot(2,2,4)
plot(w, F2_, 'r')
title('Fourier Transform of cos(10t) Signal')