close all
clearvars

%% To find the Laplace transform of a unit ramp signal

syms s t

 % t = 0 : 10^-3 : 50;



 t_num = 0:1e-3:50;

  x = t;

X = laplace(x, t, s);

y = ilaplace(X, s, t);

figure;
subplot(1,3,1)
ezplot(x);
title('Original Function, Unit Ramp Signal')

pretty(X);

subplot(1,3,2)
ezplot(X);
title('Laplace Transform: 1/s²')
pretty(y);

subplot(1,3,3)
ezplot(y);
title('Inverse Laplace, yields original function')

 
