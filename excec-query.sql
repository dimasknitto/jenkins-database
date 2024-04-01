CREATE PROCEDURE `hapusorder`(
	 IN notransaksi VARCHAR(200),OUT out_msg VARCHAR(255))
BEGIN

DECLARE done INT DEFAULT 0;
DECLARE sqlstate_code CHAR(5) DEFAULT '00000';
DECLARE v_rollback BOOL DEFAULT 0; 


DECLARE message_text TEXT;
DECLARE mysql_errno INT;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done=1;
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION 
	BEGIN		
		GET DIAGNOSTICS CONDITION 1
		sqlstate_code = RETURNED_SQLSTATE,
		mysql_errno = MYSQL_ERRNO,
		message_text = MESSAGE_TEXT;
	
		SET v_rollback = 1; 
	END;

START TRANSACTION;
  delete from testing;
 
 IF v_rollback = 1 THEN 
    ROLLBACK;
 
   SET out_msg = CONCAT(IFNULL(MESSAGE_TEXT, 0), ' ', IFNULL(out_msg,''));
  ELSE
    COMMIT;
    SET out_msg = 'sukses';
  END IF;  
    END
