use library;

-- creating author table
CREATE TABLE author

(author_id int not null auto_increment primary key,
first_name varchar(50),
last_name varchar(50),
title varchar(10)
);

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
SELECT*
FROM author; 