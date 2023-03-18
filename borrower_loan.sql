use library;

CREATE TABLE borrower

(borrower_id int not null auto_increment primary key,
first_name varchar(50),
last_name varchar(50),
email varchar(50),
phone varchar(50)
);

CREATE TABLE book_loan

(loan_id int not null auto_increment primary key,
borrower_id int NULL,
loan_date date,
foreign key (borrower_id) references borrower(borrower_id));

ALTER TABLE book_loan
ADD COLUMN book_id int,
ADD foreign key (book_id) references book (book_id);
