use library;

CREATE TABLE address
(address_id int not null auto_increment primary key,
house_number int,
building varchar(50),
street varchar(100),
city varchar(50),
postcode varchar(10)
);

CREATE TABLE borrower

(borrower_id int not null auto_increment primary key,
address_id int,
first_name varchar(50),
last_name varchar(50),
email varchar(50),
phone varchar(50),
foreign key (address_id) references address(address_id)
);

CREATE TABLE book_loan

(loan_id int not null auto_increment primary key,
borrower_id int NULL,
loan_date date,
foreign key (borrower_id) references borrower(borrower_id)
);

ALTER TABLE book_loan
ADD COLUMN book_id int,
ADD foreign key (book_id) references book (book_id);

ALTER TABLE borrower
ADD COLUMN address_id int,
ADD foreign key (borrower_id) references borrower(borrower_id);
