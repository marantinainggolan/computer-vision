img = imread('c:\Gambar\bunga.jpg');
[tinggi, lebar] = size(img);

sudut = 5; % Sudut pemutaran
rad = pi * sudut/180;
cosa = cos(rad);
sina = sin(rad);
img2 = double(img);

for y=1 : tinggi
    for x=1 : lebar
        x2 = round(x * cosa + y * sina);
        y2 = round(y * cosa - x * sina);
        
        if (x2>=1) && (x2<=lebar) && ...
           (y2>=1) && (y2<=tinggi)
           G(y, x) = img2(y2, x2);
        else
           G(y,x) = 0;
        end
    end
end

G = uint8(G);
figure(1); imshow(G);

clear all;
