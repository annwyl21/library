use library;

-- attempt at creating a stored procedure to grab 10 rows of data

DELIMITER //

CREATE PROCEDURE SelectFirst3Books()
BEGIN
	SELECT *  FROM book LIMIT 3;
END //

DELIMITER ;

CALL SelectFirst3Books();

-- I have no idea if this will work as I have no data yet to test it on but I am getting excited now about this project coming together