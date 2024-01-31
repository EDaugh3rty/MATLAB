%Ethan Daugherty
%Assignment 8
%Resources:

x  = rand(2048)*12 - 3;
m1 = mean(x,"all");
v1 = var(x,0,"all");
subplot(4,1,1)
plot(smooth(x))
axis([0 2048 -15 15])
txt = 'Estimated Mean = ' + string(m1);
text(250,10,txt)
txt = 'Estimated Variance = ' + string(v1);
text(250,-10,txt)
title('Uniform RV Samples')

x1 = sqrt(12)*randn(2048) + 3;
m2 = mean(x1,"all");
v2 = var(x,0,"all");
subplot(4,1,2)
plot (smooth(x1))
axis([0 2048 -15 15])
txt = 'Estimated Mean = ' + string(m2);
text(250,10,txt)
txt = 'Estimated Variance = ' + string(v2);
text(250,-10,txt)
title('Normal RV Samples')


subplot(4,1,3)
histogram(x,100,Normalization="pdf")
axis([-5 10 .08 .09])
title('Uniform RV histogram (normalized)')

subplot(4,1,4)
histogram(x1,100,Normalization="pdf")

title('Normal RV Histogram (normalized)')

