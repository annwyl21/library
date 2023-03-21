use library;

-- creating author table
CREATE TABLE author

(author_id int not null auto_increment primary key,
first_name varchar(50),
last_name varchar(50),
title varchar(10)
);

-- create book table
CREATE TABLE book
(book_id int not null auto_increment primary key,
title varchar(500) null,
published int null
);

-- create address table
CREATE TABLE address
(address_id int not null auto_increment primary key,
house_number int,
building varchar(50),
street varchar(100),
city varchar(50),
postcode varchar(10)
);

-- create borrower table
CREATE TABLE borrower
(borrower_id int not null auto_increment primary key,
first_name varchar(50),
last_name varchar(50),
email varchar(50),
phone varchar(50)
);

-- create book loan table
CREATE TABLE book_loan
(loan_id int not null auto_increment primary key,
borrower_id int  NULL,
loan_date date,
foreign key (borrower_id) references borrower(borrower_id)
);

create table genre
(genre_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
genre_type VARCHAR(100) NOT NULL);

INSERT INTO genre (genre_type)
VALUES 
('Non-fiction: History'),
('Non-fiction: Philosophy'),
('Non-fiction: Geography'),
('Non-fiction: Biology'),
('Non-fiction: Chemistry'),

('Fiction: Science Fiction'),
('Fiction: Thriller'),
('Fiction: Fantasy'),
('Fiction: Romance'),
('Fiction: Adventure');

