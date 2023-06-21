clear
clc
close all

img = imread('5.png');
%imshow(img) = menampilkan gambar;
% : = 255
R = img(:,100,1);
G = img(:,:,2);
B = img(:,:,3);

imgR = cat(3,R,G*0,B*0);
imgG = cat(3,R*0,G,B*0);
imgB = cat(3,R*0,G*0,B);
imgBnW = im2bw(img);
imgGray = rgb2gray(img);

%imhist(imgGray) = membuat histogram dari kadar warna
%Agar title muncul, taruh title dibawah imshow
%subplot(baris,kolom,urutan ke-x)
subplot(3,2,1);
imshow(img);
title('Normal');
subplot(3,2,2);
imshow(imgR);
title('Red');
subplot(3,2,3);
imshow(imgG);
title('Green');
subplot(3,2,4);
imshow(imgB);
title('Blue');
subplot(3,2,5);
imshow(imgBnW);
title('Black, White');
subplot(3,2,6);
imshow(imgGray);
title('Gray');