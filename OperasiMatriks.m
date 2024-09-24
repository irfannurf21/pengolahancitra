% Memilih dua gambar
[fileName1, filePath1] = uigetfile({'*.jpg;*.png;*.bmp','Image Files (*.jpg, *.png, *.bmp)'}, 'Pilih File Gambar Pertama');
if isequal(fileName1, 0)
    disp('File selection canceled for the first image.');
    return;
end
img1 = imread(fullfile(filePath1, fileName1));

[fileName2, filePath2] = uigetfile({'*.jpg;*.png;*.bmp','Image Files (*.jpg, *.png, *.bmp)'}, 'Pilih File Gambar Kedua');
if isequal(fileName2, 0)
    disp('File selection canceled for the second image.');
    return;
end
img2 = imread(fullfile(filePath2, fileName2));

% Pastikan kedua gambar memiliki ukuran yang sama
if size(img1) ~= size(img2)
    disp('Gambar tidak memiliki ukuran yang sama.');
    return;
end

size(img1);
size(img2);

% Operasi Penjumlahan
img_sum = img1 + img2;
figure, imshow(img_sum), title('Penjumlahan Gambar');

% Operasi Pengurangan
img_subtract = img1 - img2;
figure, imshow(img_subtract), title('Pengurangan Gambar');

% Operasi Perkalian (elemen per elemen)
img_multiply = img1 .* img2;
figure, imshow(img_multiply), title('Perkalian Gambar');
