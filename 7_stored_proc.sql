use library;

-- attempt at creating a stored procedure to grab 3 rows of data
DELIMITER //

CREATE PROCEDURE SelectFirst3Books()
BEGIN
	SELECT *  FROM book LIMIT 3;
END //

DELIMITER ;

CALL SelectFirst3Books();




-- stored procedure to count all the books in the library
DELIMITER //

CREATE PROCEDURE BookCount()
BEGIN
	SELECT count(*) from book;
END //

DELIMITER ;

CALL BookCount();




-- stored procedure to count the number of borrowers
DELIMITER //

CREATE PROCEDURE BorrowerCount()
BEGIN
	SELECT count(*) from borrower;
END //

DELIMITER ;

CALL BorrowerCount();
