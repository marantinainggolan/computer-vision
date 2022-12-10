Ig = imread ('c:\Gambar\kartun.jpg');

gray = rgb2gray (Ig);

Gx = [1 0 ; 0 -1];
Gy = [0 1 ; -1 0];
Ix = conv2(double(gray), double(Gx), 'same');
Iy = conv2(double(gray), double(Gy), 'same');
Iedge = sqrt(Ix.^2 + Iy.^2);

figure,
subplot(1,2,1), imshow(Ig), title('Citra Asli');
subplot(1,2,2), imshow(uint8(Iedge)), title('Citra Hasil Edge Detection Robert');