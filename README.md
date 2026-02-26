## Repository ini berisi:
1) Perintah untuk membuat DATABASE
2) Perintah untuk membuat table mahasiswa
3) Perintah insert 5 data mahasiswa
4) Perintah Menampilkan Data setelah insert
5) Perintah update data 1 mahasiswa
6) Perintah menampilkan data setelah update
7) Perintah delete 1 data mahasiswa
8) Perintah Menampilkan data setelah delete

## Struktur Table
Tabel Mahasiswa Memiliki COLOUMN:
- `id` (INT) -> Primary Key, Auto Increment
- `nama` (VARCHAR)
- `umur`(INT)
- `ipk` (DECIMAL(4,2)) -> 4 Angka didepan koma (,) dan 2 angka dibelakang koma (,)
- `tanggal_lahir` (DATE)
- `status_cuti` (BOOLEAN)



## Langkah pembuatan file sql
1) Membuat database dengan code : CREATE DATABASE tugas_magang;
2) gunakan database tugas_magang dengan code : USE tugas_magang;
3) buat table dengan nama MAHASISWA beserta dengan coloumn nya dengan perintah :
	CREATE TABLE Mahasiswa (
        id INT AUTO_INCREMENT PRIMARY KEY,
        nama VARCHAR(100) NOT NULL,
        umur INT NOT NULL,
        ipk DECIMAL(4,2) NOT NULL,
        tanggal_lahir DATE NOT NULL,
        status_cuti BOOLEAN NOT NULL DEFAULT O
    );

**KETERANGAN status_cuti jika :
- `0` maka dianggap false (tidak cuti)
- `1` maka dianggap true (cuti)

## INSERT DATA KE DATABASE
1) INSERT INTO mahasiswa (nama, umur, ipk, tanggal_lahir, status_cuti) VALUES
('AGUNG SUSANTO', 19, 3.45, '2006-01-12',0),
('BUDI PRASETYO', 20, 3.80, '2005-08-12', 0),
('CITRA HIDAYAH', 21, 2.80, '2004-01-21', 1),
('DEWI PERMATA', 18, 3.90, '2007-10-05', 0),
('EKO KHALAWI', 19, 2.00, '2006-06-01', 1);


## Menampilkan data setelah insert data
- gunakan perintah ini: `SELECT * FROM mahasiswa ORDER BY id;`
 akan menampikan data mahasiswa dari id

## update data mahasiswa
- gunakan perintah update berikut ini: `UPDATE mahasiswa`
                                        `SET ipk = 3.55,`
                                        `status_cuti = 0`
                                        `WHERE id = 3;`
 akan mengupdate ipk dan status cuti dari mahasiswa yang menggunakan id 3

 ## delete data mahasiswa
- gunakan perintah ini : `DELETE FROM mahasiswa`
                         `WHERE id = 5;`
akan menghapus data mahasiswa dengan id 5 dari tabel

## cara menjalankan perintah diatas
1) Buka mySQL pada Workbench / phpMyAdmin / CLI MySQL
2) Jalankan satu persatu mulai dari atas perintah diatas pada menu SQL
3) Perhatikan Hasil `SELECT` setelah melakukan `INSERT, UPDATE, DELETE` apakah sudah sesuai