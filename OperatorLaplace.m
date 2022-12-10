img = imread('c:\Gambar\harimau.jpg');

grayscale = rgb2gray(img);

G = [1 -2 1; -2 4 -2; 1 -2 1];
Iedge = conv2(double(grayscale), double(G), 'same');

figure,
subplot(1,2,1), imshow(img), title('Citra Asli');
subplot(1,2,2), imshow(uint8(Iedge)), title('Citra Hasil Edge Detection Operator Laplace');