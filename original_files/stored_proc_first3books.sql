use library;

-- attempt at creating a stored procedure to grab 3 rows of data

DELIMITER //

CREATE PROCEDURE SelectFirst3Books()
BEGIN
	SELECT *  FROM book LIMIT 3;
END //

DELIMITER ;

CALL SelectFirst3Books();

