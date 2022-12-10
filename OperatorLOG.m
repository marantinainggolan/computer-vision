img = imread('c:\Gambar\burung.jpg');

grayscale = rgb2gray(img);

G = [0 0 -1 0 0;
    0 -1 -2 -1 0;
    -1 -2 16 -2 -1;
    0 -1 -2 -1 0;
    0 0 -1 0 0];
Iedge = conv2(double(grayscale), double(G), 'same');

figure,
subplot(1,2,1), imshow(img), title('Citra Asli');
subplot(1,2,2), imshow(uint8(Iedge)), title('Citra Hasil Edge Detection Operator LOG');