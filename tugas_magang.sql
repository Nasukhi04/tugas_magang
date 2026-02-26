-- 1) PROSES PEMBUATAN DATABASE
CREATE DATABASE tugas_magang;
-- 2) menggunakan database yang dibuat
USE tugas_magang;

-- 3) membuat tabel mahasiswa
CREATE TABLE mahasiswa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    umur INT NOT NULL,
    ipk DECIMAL(4,2) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    status_cuti BOOLEAN NOT NULL DEFAULT 0
);

-- 4 insert data mahasiswa
INSERT INTO mahasiswa (nama, umur, ipk, tanggal_lahir, status_cuti) VALUES
('AGUNG SUSANTO', 19, 3.45, '2006-01-12', 0),
('BUDI PRASETYO', 20, 3.80, '2005-08-12', 0),
('CITRA HIDAYAH', 21, 2.80, '2004-01-21', 1),
('DEWI PERMATA', 18, 3.90, '2007-10-05', 0),
('EKO KHALAWI', 19, 2.00, '2006-06-01', 0);

-- 5) Menampilkan data setelah insert menggunakan id
SELECT * FROM mahasiswa ORDER BY id;

-- 6) update data mahasiswa
UPDATE mahasiswa
    SET ipk = 3.55,
    status_cuti = 0,
    WHERE id = 3;

--7) menampilkan data setelah edit menggunakan id
SELECT * FROM mahasiswa ORDER BY id;

-- 8) menghapus data mahasiswa melalui id
DELETE from mahasiswa
WHERE id = 5;

-- 9) menampikan datamahasiswa setelah delete
SELECT * FROM mahasiswa ORDER BY id;
