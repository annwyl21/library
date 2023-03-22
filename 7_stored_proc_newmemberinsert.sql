use library;

-- I screwed it up a few times, forgetting various bits and had to delete/ drop the procedure a few times before I got it working.
DROP PROCEDURE NewMember;

-- attempt at creating a stored procedure to insert new member
DELIMITER //

CREATE PROCEDURE NewMember(in fn varchar(50), in ln varchar(50), in em varchar(50), in ph varchar(50), in hn int, in bu varchar(50), in st varchar(50), in ci varchar(50), po varchar(10))
BEGIN
    insert into address(house_number, building, street, city, postcode)
    values(hn, bu, st, ci, po);
    insert into borrower(first_name, last_name, email, phone)
    values(fn, ln, em, ph);
END //

DELIMITER ;

CALL NewMember('Abigail', 'Walters', 'abiw@home.com', '123 789 852', '24', 'Corringham', 'my street', 'London', 'G56 7FD');
select * from borrower;

DELIMITER //

CREATE PROCEDURE New_Book(in bt varchar(50),in pb int)
BEGIN
    insert into book(title, published)
    values(bt,pb);
    
END //

DELIMITER ;

CALL New_Book('A Court of Thorns and Roses',2015);
select * from book;

DELIMITER //



