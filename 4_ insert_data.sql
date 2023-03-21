use library;

-- insert data into address table
INSERT INTO address (house_number, building, street, city, postcode)
VALUES
    (10, 'Block A', 'Main Street', 'London', 'SW1A 1AA'),
    (33, 'Strangeways', 'Swansea Road', 'Swansea', 'SA4 3GW'),
    (25, 'High Towers', 'High Street', 'Manchester', 'M1 1AA'),
    (20, 'Beacon House', 'Market Street', 'Birmingham', 'B1 1AA'),
    (48, 'Treacle Terrace', 'Queen Street', 'Glasgow', 'G1 1AA'),
    (50, 'Oak Tree House', 'George Street', 'Edinburgh', 'EH1 1AA'),
    (8, 'Bay Beach', 'Marine Avenue', 'Brighton', 'BN2 1BD'),
    (5, 'Brookfield', 'Richard Street', 'York', 'YO1 6JH'),
    (12, 'Victoria Lane', 'Castle Hill', 'Dudley', 'DY1 4QF'),
    (28, 'The Arches', 'Park Lane', 'Leicester', 'LE1 4AD');

-- inserting data into author table 
INSERT INTO author(first_name, last_name, title)
values
('Caroline', 'Criado Perez', 'OBE'),
('Atul', 'Gawande', 'MD'),
('Larry', 'Beasley', 'CM'),
('Quanta A', 'Ahmed', 'MD'),
-- the first four authors are for Ellen's book data
('Anthony', 'Powell', 'CBE'),
-- Anthony Powell wrote a book called 'A Question of Upbringing, Books Do Furnish a Room'
('David', 'Olusoga', 'CBE'),
-- Davd Olusoga wrote a book called 'Black and British. A Forgotten History'
('Roald', 'Dahl', ' '),
-- Roald Dahl wrote 'The BFG', 'Matilda', 'The Enormous Crocodile' 
('Emily', 'Brontë', ' '),
-- Emily Brontë wrote the classic 'Wuthering Heights' 
('Rabindranath', 'Tagore', ' '),
-- Rabindranath Tagore wrote a book called 'Collected Poems and Plays of Rabindranath Tagore'
('Malorie', 'Blackman', 'OBE');
-- Malorie Blackman wrote a book called 'Noughts and Crosses'

-- insert an extra author into author table
INSERT INTO author(first_name, last_name, title)
values
('David', 'Nott', 'MD');
-- he wrote War Doctor

-- insert into book table
insert into book(title, published)
values 
    ('Invisible Women: Exposing Data Bias in a World Designed for Men', 2019),
    ('The Checklist Manifesto: How to Get Things Right', 2019),
    ('Vancouverism', 2019),
    ('In the Land of Invisible Women: A Female Doctor''s Journey in the Saudi Kingdom', 2008);

-- update book table adding data to foreign key field
update book
set author_id='1'
where book_id='1';

update book
set author_id='2'
where book_id='2';

update book
set author_id='3'
where book_id='3';

update book
set author_id='4'
where book_id='4';

-- insert data into borrower table
INSERT INTO borrower(first_name,last_name,email,phone)
values
 ('Lily', 'Hughes', 'lily.hughes@example.com', '07123456789'),
  ('Oliver', 'Patel', 'oliver.patel@example.com', '07234567890'),
  ('Ava', 'Campbell', 'ava.campbell@example.com', '07345678901'),
  ('Ethan', 'Collins', 'ethan.collins@example.com', '07456789012'),
  ('Mia', 'Khan', 'mia.khan@example.com', '07567890123'),
  ('William', 'Price', 'william.price@example.com', '07678901234'),
  ('Charlotte', 'Scott', 'charlotte.scott@example.com', '07789012345'),
  ('Jacob', 'Wright', 'jacob.wright@example.com', '07890123456'),
  ('Grace', 'Morris', 'grace.morris@example.com', '07901234567'),
  ('Noah', 'Bailey', 'noah.bailey@example.com', '07912345678');

-- insert data into book_loan table

INSERT INTO book_loan(borrower_id,book_id,loan_date)
values
(3,2,'2023-03-22'),
(4,3,'2023-03-08'),
(5,3,'2023-04-09'),
(6,2,'2023-04-06'),
(7,1,'2023-04-01'),
(8,1,'2023-03-19'),
(9,2,'2023-03-30'),
(10,3,'2023-04-10'),
(1,2,'2023-03-25'),
(2,2,'2023-03-13');

ALTER TABLE book_loan MODIFY loan_date date AFTER book_id;

update borrower
set address_id = '1'
where borrower_id = '1';

update borrower
set address_id = '1'
where borrower_id = '2';

update borrower
set address_id = '1'
where borrower_id = '3';

update borrower
set address_id = '3'
where borrower_id = '4';

update borrower
set address_id = '5'
where borrower_id = '5';

update borrower
set address_id = '8'
where borrower_id = '8';

update borrower
set address_id = '2'
where borrower_id = '10';


