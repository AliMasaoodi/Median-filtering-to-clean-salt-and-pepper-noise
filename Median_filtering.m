%median filtering can be implemented by the medfilt2 function:


tw = imread('c:\image.jpg');
t = rgb2gray(tw);
 
t_sp = imnoise(t,'salt & pepper'); % add salt and pepper noise

t_sp_m3=medfilt2(t_sp);
 
t_sp2=imnoise(t,'salt & pepper',0.2);

t_sp2_m5=medfilt2(t_sp2,[5,5]);
 
figure ('Name','median filtering');

subplot(2,2,1),imshow(t);title('Original Image');
subplot(2,2,2),imshow(t_sp);title('salt & pepper');
subplot(2,2,3),imshow(t_sp_m3);title('3x3 salt & pepper');
subplot(2,2,4),imshow(t_sp2_m5);title('5x5 0.2 salt & pepper');
