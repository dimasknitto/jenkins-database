DELIMITER $$

-- Membuat prosedur baru
CREATE PROCEDURE knitto.sp_test()
BEGIN
    DELETE FROM testing; -- Hapus semua baris dari tabel `testing`
END$$

-- Mengembalikan delimiter ke default
DELIMITER ;
