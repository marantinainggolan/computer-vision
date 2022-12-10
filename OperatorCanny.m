img = imread('c:/Gambar/harimau.jpg');

grayscale = rgb2gray(img);

Iedge = edge(grayscale,'canny');

figure,
subplot(1,2,1), imshow(img), title('Citra Asli');
subplot(1,2,2), imshow(Iedge), title('Citra Hasil Edge Detection Operator Canny');