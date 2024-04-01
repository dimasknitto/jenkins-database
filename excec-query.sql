DROP PROCEDURE IF EXISTS knitto.sp_test;

DELIMITER $$
$$
CREATE PROCEDURE knitto.sp_test()
BEGIN
	delete from testing;
END;
$$
DELIMITER ;
