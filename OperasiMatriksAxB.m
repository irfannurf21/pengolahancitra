clear all;
clc;

A = [3 9; 1 2]; % Matriks A
B = [1 5; 2 4]; % Matriks B

[m, n] = size(A); % Ukuran matriks A
[o, p] = size(B); % Ukuran matriks B

if n == p
    % Jika jumlah kolom A dan B sama
    % Penjumlahan 
    for x = 1:m
        for y = 1:n
            F(x, y) = A(x, y) + B(x, y);
        end
    end
    disp('Hasil penjumlahan matriks A + B:');
    disp(F);
    
    % Pengurangan
    for x = 1:m
        for y = 1:n
            D(x, y) = A(x, y) - B(x, y);
        end
    end
    disp('Hasil pengurangan matriks A - B:');
    disp(D);
    
    % Perkalian 2A
    for x = 1:m
        for y = 1:n
            E(x, y) = 2*A(x, y);
        end
    end
    disp('Hasil perkalian matriks skalar 2*A:');
    disp(E);
    
    % Perkalian 2 matriks
     F = zeros(m, p); % Inisialisasi matriks hasil (m x p)
    for i = 1:m
        for j = 1:p
            for k = 1:n
                F(i, j) = F(i, j) + A(i, k) * B(k, j);
            end
        end
    end
    disp('Hasil perkalian matriks A * B:');
    disp(F);
    
else
    disp('Error: Ukuran matriks A dan B tidak sama.');
end
