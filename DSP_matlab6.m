%Ethan Daugherty
%MATLAB ASSIGNMENT 6
%shifted value is 4 so signal starts at 3
T = 31; %declares value for period
t = 1:50;
w = 2*pi/T; %declares omega
a0 = 2/31;

f = 0;
for n = 1:3
    %sets up a function handle for the integral
    fun0 = @(t) cos(n*w*t);
    fun1 = @(t) sin(n*w*t);

    %defines the coefficients
    an(n) = (2/T)*integral(fun0, 3, 5);
    bn(n) = (2/T)*integral(fun1, 3, 5);
    f = f + an(n)*cos(n*w*t) + bn(n)*sin(n*w*t);
end
f = f + a0;
subplot(2,2,1)
plot(t,f)
axis([0 50 -.1 .6])
title("plot of harmonics(1 <= n <= 3)");xlabel("t(time)"); ylabel("f(t)");
grid("minor")

f = 0;
for n = 5:20
    %sets up a function handle for the integral
    fun0 = @(t) cos(n*w*t);
    fun1 = @(t) sin(n*w*t);

    %defines the coefficients
    an(n) = (2/T)*integral(fun0, 3, 5);
    bn(n) = (2/T)*integral(fun1, 3, 5);
    f = f + an(n)*cos(n*w*t) + bn(n)*sin(n*w*t);
end
f = f + a0;
subplot(2,2,2)
plot(t,f)
axis([0 50 -.4 .8])
title("plot of harmonics(5 <= n <= 20)");xlabel("t(time)"); ylabel("f(t)");
grid("minor")

f = 0;
for n = 10:50
    %sets up a function handle for the integral
    fun0 = @(t) cos(n*w*t);
    fun1 = @(t) sin(n*w*t);

    %defines the coefficients
    an(n) = (2/T)*integral(fun0, 3, 5);
    bn(n) = (2/T)*integral(fun1, 3, 5);
    f = f + an(n)*cos(n*w*t) + bn(n)*sin(n*w*t);
end
f = f + a0;
subplot(2,2,3)
plot(t,f)
axis([0 50 -.1 .2])
title("plot of harmonics(10 <= n <= 50)");xlabel("t(time)"); ylabel("f(t)");
grid("minor")

f = 0;
for n = 1:50
    %sets up a function handle for the integral
    fun0 = @(t) cos(n*w*t);
    fun1 = @(t) sin(n*w*t);

    %defines the coefficients
    an(n) = (2/T)*integral(fun0, 3, 5);
    bn(n) = (2/T)*integral(fun1, 3, 5);
    f = f + an(n)*cos(n*w*t) + bn(n)*sin(n*w*t);
end
f = f + a0;
subplot(2,2,4)
plot(t,f)
axis([0 50 -.2 1.2])
title("plot of harmonics(1 <= n <= 50)");xlabel("t(time)"); ylabel("f(t)");
grid("minor")


%----------------------------------------------------
%EXPLANATION of RESULTS
%As the sample size grew the spikes become more clear.
%The sample size would show different amounts of noise on the signal.