%Ethan Daugherty
%DSP ASSIGNMENT 7
%Resources: the document provided for this assignment

[image,map] = imread("lena.GIF");
img = ind2gray(image, map);
image1 = imnoise(img,'gaussian',0,.01);%set an image with gaussian noise
image2 = imnoise(img,'salt & pepper');%set an image with salt and pepper noise

subplot(5,2,1)%displays gaussian noise image
imshow(image1,[64,255]),title({'Gaussian Noise','(image 1)'})

subplot(5,2,2)%displays salt and pepper noise image
%figure(2)
imshow(image2,[64,255]),title({'Salt & Pepper Noise','(image 2)'})

t= image1;
for i=2:255%filters with an average filter and a 3x3 kernel
    for j=2:255
        mask1=(1/9)*[t(i-1,j-1) t(i-1,j) t(i-1,j+1) t(i,j-1) t(i,j) t(i,j+1) t(i+1,j-1) t(i+1,j) t(i+1,j+1)];
        image3(i,j)=sum(mask1);
    end
end
subplot(5,2,3)
%figure(3)
imshow(image3,[64,255]),title({'Gaussian by 3x3 ','averaging filter(image 3)'})

t= image2;
for i=2:255%filters with an average filter and a 3x3 kernel
    for j=2:255
        mask1=(1/9)*[t(i-1,j-1) t(i-1,j) t(i-1,j+1) t(i,j-1) t(i,j) t(i,j+1) t(i+1,j-1) t(i+1,j) t(i+1,j+1)];
        image4(i,j)=sum(mask1);
    end
end
subplot(5,2,4)
%figure(4)
imshow(image4,[64,255]),title({'Salt & pepper by 3x3',' averaging filter(image 4)'})

t = image1;
for i=2:255%filters with an median filter and a 3x3 kernel
    for j=2:255
        mask1=[t(i-1,j-1), t(i-1,j), t(i-1,j+1), t(i,j-1), t(i,j), t(i,j+1), t(i+1,j-1), t(i+1,j), t(i+1,j+1)];
        image5(i,j)=median(mask1);
    end
end
subplot(5,2,5)
%figure(5)
imshow(image5,[64,255]),title({'Gaussian by 3x3', 'median filter(image 5)'})

t = image2;
for i=2:255%filters with an median filter and a 3x3 kernel
    for j=2:255
        mask1=[t(i-1,j-1), t(i-1,j), t(i-1,j+1), t(i,j-1), t(i,j), t(i,j+1), t(i+1,j-1), t(i+1,j), t(i+1,j+1)];
        image6(i,j)=median(mask1);
    end
end
subplot(5,2,6)
%figure(6)

imshow(image6,[64,255]),title({'Salt & Pepper by 3x3', 'median filter(image 6)'})


t = image1;
for i=2:249%filters with an average filter and a 9x9 kernel
    for j=2:249
        mask2=(1/81)*[t(i-1,j-1), t(i-1,j), t(i-1,j+1), t(i-1,j+2), t(i-1,j+3), t(i-1,j+4), t(i-1,j+5), t(i-1,j+6), t(i-1,j+7) t(i,j-1), t(i,j), t(i,j+1), t(i,j+2), t(i,j+3), t(i,j+4), t(i,j+5), t(i,j+6), t(i,j+7) t(i+1,j-1), t(i+1,j), t(i+1,j+1), t(i+1,j+2), t(i+1,j+3), t(i+1,j+4), t(i+1,j+5), t(i+1,j+6), t(i+1,j+7) t(i+2,j-1), t(i+2,j), t(i+2,j+1), t(i+2,j+2), t(i+2,j+3), t(i+2,j+4), t(i+2,j+5), t(i+2,j+6), t(i+2,j+7) t(i+3,j-1), t(i+3,j), t(i+3,j+1), t(i+3,j+2), t(i+3,j+3), t(i+3,j+4), t(i+3,j+5), t(i+3,j+6), t(i+3,j+7) t(i+4,j-1), t(i+4,j), t(i+4,j+1), t(i+4,j+2), t(i+4,j+3), t(i+4,j+4), t(i+4,j+5), t(i+4,j+6), t(i+4,j+7) t(i+5,j-1), t(i+5,j), t(i+5,j+1), t(i+5,j+2), t(i+5,j+3), t(i+5,j+4), t(i+5,j+5), t(i+5,j+6), t(i+5,j+7) t(i+6,j-1), t(i+6,j), t(i+6,j+1), t(i+6,j+2), t(i+6,j+3), t(i+6,j+4), t(i+6,j+5), t(i+6,j+6), t(i+6,j+7) t(i+7,j-1), t(i+7,j), t(i+7,j+1), t(i+7,j+2), t(i+7,j+3), t(i+7,j+4), t(i+7,j+5), t(i+7,j+6), t(i+7,j+7)];
        image7(i,j)=sum(mask2);
    end
end
subplot(5,2,7)
%figure(7)
imshow(image7,[64,255]),title({'Gaussian by 9x9', 'averaging filter(image 7)'})

t = image2;
for i=2:249%filters with an average filter and a 9x9 kernel
    for j=2:249
        mask2=(1/81)*[t(i-1,j-1), t(i-1,j), t(i-1,j+1), t(i-1,j+2), t(i-1,j+3), t(i-1,j+4), t(i-1,j+5), t(i-1,j+6), t(i-1,j+7) t(i,j-1), t(i,j), t(i,j+1), t(i,j+2), t(i,j+3), t(i,j+4), t(i,j+5), t(i,j+6), t(i,j+7) t(i+1,j-1), t(i+1,j), t(i+1,j+1), t(i+1,j+2), t(i+1,j+3), t(i+1,j+4), t(i+1,j+5), t(i+1,j+6), t(i+1,j+7) t(i+2,j-1), t(i+2,j), t(i+2,j+1), t(i+2,j+2), t(i+2,j+3), t(i+2,j+4), t(i+2,j+5), t(i+2,j+6), t(i+2,j+7) t(i+3,j-1), t(i+3,j), t(i+3,j+1), t(i+3,j+2), t(i+3,j+3), t(i+3,j+4), t(i+3,j+5), t(i+3,j+6), t(i+3,j+7) t(i+4,j-1), t(i+4,j), t(i+4,j+1), t(i+4,j+2), t(i+4,j+3), t(i+4,j+4), t(i+4,j+5), t(i+4,j+6), t(i+4,j+7) t(i+5,j-1), t(i+5,j), t(i+5,j+1), t(i+5,j+2), t(i+5,j+3), t(i+5,j+4), t(i+5,j+5), t(i+5,j+6), t(i+5,j+7) t(i+6,j-1), t(i+6,j), t(i+6,j+1), t(i+6,j+2), t(i+6,j+3), t(i+6,j+4), t(i+6,j+5), t(i+6,j+6), t(i+6,j+7) t(i+7,j-1), t(i+7,j), t(i+7,j+1), t(i+7,j+2), t(i+7,j+3), t(i+7,j+4), t(i+7,j+5), t(i+7,j+6), t(i+7,j+7)];
        image8(i,j)=sum(mask2);
    end
end
subplot(5,2,8)
%figure(8)
imshow(image8,[64,255]),title({'Salt & Pepper by 9x9', 'averaging filter(image 8)'})

t = image1;
for i=2:249%filters with an median filter and a 9x9 kernel
    for j=2:249
        mask2=[t(i-1,j-1), t(i-1,j), t(i-1,j+1), t(i-1,j+2), t(i-1,j+3), t(i-1,j+4), t(i-1,j+5), t(i-1,j+6), t(i-1,j+7) t(i,j-1), t(i,j), t(i,j+1), t(i,j+2), t(i,j+3), t(i,j+4), t(i,j+5), t(i,j+6), t(i,j+7) t(i+1,j-1), t(i+1,j), t(i+1,j+1), t(i+1,j+2), t(i+1,j+3), t(i+1,j+4), t(i+1,j+5), t(i+1,j+6), t(i+1,j+7) t(i+2,j-1), t(i+2,j), t(i+2,j+1), t(i+2,j+2), t(i+2,j+3), t(i+2,j+4), t(i+2,j+5), t(i+2,j+6), t(i+2,j+7) t(i+3,j-1), t(i+3,j), t(i+3,j+1), t(i+3,j+2), t(i+3,j+3), t(i+3,j+4), t(i+3,j+5), t(i+3,j+6), t(i+3,j+7) t(i+4,j-1), t(i+4,j), t(i+4,j+1), t(i+4,j+2), t(i+4,j+3), t(i+4,j+4), t(i+4,j+5), t(i+4,j+6), t(i+4,j+7) t(i+5,j-1), t(i+5,j), t(i+5,j+1), t(i+5,j+2), t(i+5,j+3), t(i+5,j+4), t(i+5,j+5), t(i+5,j+6), t(i+5,j+7) t(i+6,j-1), t(i+6,j), t(i+6,j+1), t(i+6,j+2), t(i+6,j+3), t(i+6,j+4), t(i+6,j+5), t(i+6,j+6), t(i+6,j+7) t(i+7,j-1), t(i+7,j), t(i+7,j+1), t(i+7,j+2), t(i+7,j+3), t(i+7,j+4), t(i+7,j+5), t(i+7,j+6), t(i+7,j+7)];
        image9(i,j)=median(mask2);
    end
end
subplot(5,2,9)
%figure(9)
imshow(image9,[64,255]),title({'Gaussian by 9x9', 'median filter(image 9)'})

t = image2;
for i=2:249%filters with an median filter and a 9x9 kernel
    for j=2:249
        mask2=[t(i-1,j-1), t(i-1,j), t(i-1,j+1), t(i-1,j+2), t(i-1,j+3), t(i-1,j+4), t(i-1,j+5), t(i-1,j+6), t(i-1,j+7) t(i,j-1), t(i,j), t(i,j+1), t(i,j+2), t(i,j+3), t(i,j+4), t(i,j+5), t(i,j+6), t(i,j+7) t(i+1,j-1), t(i+1,j), t(i+1,j+1), t(i+1,j+2), t(i+1,j+3), t(i+1,j+4), t(i+1,j+5), t(i+1,j+6), t(i+1,j+7) t(i+2,j-1), t(i+2,j), t(i+2,j+1), t(i+2,j+2), t(i+2,j+3), t(i+2,j+4), t(i+2,j+5), t(i+2,j+6), t(i+2,j+7) t(i+3,j-1), t(i+3,j), t(i+3,j+1), t(i+3,j+2), t(i+3,j+3), t(i+3,j+4), t(i+3,j+5), t(i+3,j+6), t(i+3,j+7) t(i+4,j-1), t(i+4,j), t(i+4,j+1), t(i+4,j+2), t(i+4,j+3), t(i+4,j+4), t(i+4,j+5), t(i+4,j+6), t(i+4,j+7) t(i+5,j-1), t(i+5,j), t(i+5,j+1), t(i+5,j+2), t(i+5,j+3), t(i+5,j+4), t(i+5,j+5), t(i+5,j+6), t(i+5,j+7) t(i+6,j-1), t(i+6,j), t(i+6,j+1), t(i+6,j+2), t(i+6,j+3), t(i+6,j+4), t(i+6,j+5), t(i+6,j+6), t(i+6,j+7) t(i+7,j-1), t(i+7,j), t(i+7,j+1), t(i+7,j+2), t(i+7,j+3), t(i+7,j+4), t(i+7,j+5), t(i+7,j+6), t(i+7,j+7)];
        image10(i,j)=median(mask2);
    end
end
subplot(5,2,10)
%figure(10)
imshow(image10,[64,255]),title({'Salt & Pepper by 9x9', 'median filter(image 10)'})

%%%%%%%%%%%%%%%COMMENT%%%%%%%%%%%%%%%
%The filtering using the median filter made the image look smoother than
%the averaging filter. The 9x9 filter made a lot more drastic changes to
%the image than the 3x3 filter
