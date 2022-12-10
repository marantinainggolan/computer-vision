% Inisialisasi
img = imread('c:/Gambar/harimau.jpg');
Grayscale = rgb2gray(img);
img2 = not(im2bw(Grayscale));
SE = [0 1 0;1 0 1;1 1 1];

% Operasi dilasi
A = img2;
B = SE;
hotx = 1;
hoty = 1;

[ta, la]=size(A);
[tb, lb]=size(B);

Xb = [];
Yb = [];
jum_anggota = 0;

%Menentukan koordinat piksel bernilai 1 pada H
for baris = 1 : tb
    for kolom = 1 : lb
        if B(baris, kolom) == 1
            jum_anggota = jum_anggota + 1;
            Xb(jum_anggota) = -hotx + kolom;
            Yb(jum_anggota) = -hoty + baris;
        end
    end
end

AB = zeros(ta, la); % Nolkan semua pada hasil dilasi

% Memproses dilasi
for baris = 1 : ta
    for kolom = 1 : la
        for indeks = 1 : jum_anggota
            if A(baris, kolom) == 1
                xpos = kolom + Xb(indeks);
                ypos = baris + Xy(indeks);
                if (xpos >= 1) && (xpos <= la) && ...
                   (ypos >= 1) && (ypos <= ta)
                     AB(ypos, xpos) = 1;
                end
            end
        end
    end
end

figure,
subplot(1,3,1), imshow(img), title('Citra Asli');
subplot(1,3,2), imshow(img2), title('Citra Biner');
subplot(1,3,3), imshow(AB), title('Operasi Dilasi');


