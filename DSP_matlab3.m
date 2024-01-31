%Ethan Daugherty
%Assignment 3
 close all
subplot(1,2,1)

%[w] = 0:pi;
b = [1, 0];
a = [1, -.9];
subplot(2,2,1)
zplane(b,a)
[H,w] = freqz(b,a);

subplot(2,2,2)
plot(w/pi,abs(H))
title ('Magnitude Response'); xlabel ('frequency in pi units'); ylabel('Magnitude')

phase = angle(H);

subplot(2,2,3)
plot(w/pi,phase/pi)
title ('Phase Response'); xlabel ('frequency in pi units'); ylabel('Phase in pi units')

