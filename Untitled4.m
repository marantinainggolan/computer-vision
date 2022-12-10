img = imread('c:/Gambar/buah2.jpg');
Grayscale = rgb2gray(img);
img2 = not(im2bw(Grayscale));

 

strElement = [1 1 1;1 1 1];

 

opening = imdilate(imerode(img2,strElement), strElement);

 

figure,
subplot(1,3,1), imshow(img), title('Citra Asli');
subplot(1,3,2), imshow(img), title('Citra Biner');
subplot(1,3,3), imshow(opening), title('Operasi Opening');