citra = imread('c:\Gambar\koala.jpg');
[baris, kolom, layer] = size(citra);

citra=double(citra);
for i = 1:baris
    for j = 1:kolom
        for k = 1:layer
            
citraFlipVertikal(i,j,k)=citra(baris-i+1,j,k);
        end
    end
end

citra2=uint8(citra);
subplot(1,2,1);
imshow(citra2);

citraFlipVertikal = uint8(citraFlipVertikal);
subplot(1,2,2);
imshow(citraFlipVertikal);

imwrite(citraFlipVertikal, 'koala_vertikal.jpg');