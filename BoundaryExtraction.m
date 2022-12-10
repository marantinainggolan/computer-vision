img = imread('c:/Gambar/harimau.jpg');
Grayscale = rgb2gray(img);
biner = im2bw(Grayscale);
SE = ones(3,3); % SE = structuring element BOX (3x3)

AB = biner - (imerode(biner,SE));
figure,
subplot(1,3,1), imshow(img), title('Citra Asli');
subplot(1,3,2), imshow(biner), title('Citra Biner');
subplot(1,3,3), imshow(AB), title('Operasi Boundary Extraction');