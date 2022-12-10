img = imread('c:\Gambar\harimau.jpg');

grayscale = rgb2gray(img);

Gx = [-1 0 1; -1 0 1; -1 0 1];
Gy = [-1 -1 -1; 0 0 0; 1 1 1];
Ix = conv2(double(grayscale), double(Gx), 'same');
Iy = conv2(double(grayscale), double(Gy), 'same');
Iedge = sqrt(Ix.^2 + Iy.^2);

figure,
subplot(1,2,1), imshow(img), title('Citra Asli');
subplot(1,2,2), imshow(uint8(Iedge)), title('Citra Hasil Edge Detection Operator Prewit');