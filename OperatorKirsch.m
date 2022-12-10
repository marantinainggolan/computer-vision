img = imread('c:\Gambar\cicoh.jpg');

grayscale = rgb2gray(img);

W = [5 -3 -3; 5 0 -3; 5 -3 -3];
NW = [ 5 5 -3; 5 0 -3; -3 -3 -3];
N = [5 5 5; -3 0 -3; -3 -3 -3];
NE = [-3 5 5; -3 0 5; -3 -3 -3];
SW = [-3 -3 -3; 5 0 -3; 5 5 -3];
S = [-3 -3 -3; -3 0 3; 5 5 5];
SE = [-3 -3 -3; -3 0 5; -3 5 5];
E = [-3 -3 5; -3 0 5; -3 -3 5];

KirschW = conv2(double(grayscale),double(W));
KirschNW = conv2(double(grayscale),double(NW));
KirschN = conv2(double(grayscale),double(N));
KirschNE = conv2(double(grayscale),double(NE));
KirschSW = conv2(double(grayscale),double(SW));
KirschS = conv2(double(grayscale),double(S));
KirschSE = conv2(double(grayscale),double(SE));
KirschE = conv2(double(grayscale),double(E));

Kirsch1 = max(KirschW,max(KirschNW,max(KirschN,KirschNE)));
Kirsch2 = max(KirschSW,max(KirschS,max(KirschSE,KirschE)));
Kirsch = max(Kirsch1, Kirsch2);

figure,
subplot(1,2,1), imshow(img), title('Citra Asli');
subplot(1,2,2), imshow(uint8(Kirsch)), title('Citra Hasil Edge Detection Operator Kirsch');
