img = imread('c:\Gambar\berang.jpg');
[tinggi, lebar] = size(img);

sx = -70; % Penggeseran arah horizontal
sy = 50; % Penggeseran arah vertikal

img2 = double(img);
hasil = zeros(size(img2));

for y=1 : tinggi
    for x=1 : lebar
        xlama = x - sx;
        ylama = y - sy;
        
        if (xlama>=1) && (xlama<=lebar) && ...
           (ylama>=1) && (ylama<=tinggi)
           hasil(y, x) = img2(ylama, xlama);
        else
            hasil(y, x) = 0;
        end
    end
end

hasil = uint8(hasil);
figure(1); imshow(hasil);
title('citra hasil X = -70, Y = 50')