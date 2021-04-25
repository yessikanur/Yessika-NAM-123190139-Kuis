disp('Matriks A');
A = [3 7 3 1 8 3; 5 10 8 4 2 5; 9 6 20 13 -3 11; 12 9 5 2 7 6; 4 2 7 7 9 12; -9 1 9 -5 14 4];
A

disp('B sebagai matriks baru yang berisi diagonal utama matriks A');
B = diag(A);
B

disp('C sebagai matriks baru yang berisi baris 2 hingga 4, kolom 2 hingga 3');
C = A(2:4,2:3);
C