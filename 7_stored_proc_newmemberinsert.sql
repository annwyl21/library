use library;

-- I screwed it up a few times, forgetting various bits and had to delete/ drop the procedure a few times before I got it working.
DROP PROCEDURE NewMember;

-- attempt at creating a stored procedure to insert new member
DELIMITER //

CREATE PROCEDURE NewMember(in fn varchar(50), in ln varchar(50), in em varchar(50), in ph varchar(50))
BEGIN
	insert into borrower(first_name, last_name, email, phone)
    values(fn, ln, em, ph);
END //

DELIMITER ;

CALL NewMember('Abigail', 'Smith', 'abi@home.com', '785 596 562');
