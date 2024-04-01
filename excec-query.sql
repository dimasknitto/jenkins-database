DELIMITER $$

-- Membuat prosedur baru
CREATE PROCEDURE knitto.sp_test()
BEGIN
    SELECT * FROM testing; -- Hapus semua baris dari tabel `testing`
END$$

-- Mengembalikan delimiter ke default
DELIMITER ;
