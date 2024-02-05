SET
@counts = (
SELECT
	COUNT(*)
FROM
	INFORMATION_SCHEMA.COLUMNS
WHERE
	TABLE_NAME = 'users'
	AND COLUMN_NAME = 'address');

IF @counts = 0 THEN
        ALTER TABLE users
            ADD COLUMN address VARCHAR(255);
END IF;

