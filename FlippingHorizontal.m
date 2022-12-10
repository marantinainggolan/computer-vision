citra = imread('c:\Gambar\koala.jpg');
[baris, kolom, layer] = size(citra);

citra=double(citra);
for i = 1:baris
    for j = 1:kolom
        for k = 1:layer
            
citraFlipHorizontal(i,j,k)=citra(i,kolom-j+1,k);
        end
    end
end

citra2=uint8(citra);
subplot(1,2,1);
imshow(citra2);

citraFlipHorizontal = uint8(citraFlipHorizontal);
subplot(1,2,2);
imshow(citraFlipHorizontal);

imwrite(citraFlipHorizontal, 'koala_vertikal.jpg');