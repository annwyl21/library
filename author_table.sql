-- inserting data into library table created
use library;

INSERT INTO author(first_name, last_name, title)
values
(1, 'Caroline', 'Criado Perez', 'OBE'),
(2, 'Atul', 'Gawande', 'MD'),
(3, 'Larry', 'Beasley', 'CM'),
(4, 'Quanta A', 'Ahmed', 'MD'),
-- the first four authors are for Ellen's book data
(5, 'Anthony', 'Powell', 'CBE'),
-- Anthony Powell wrote a book called 'A Question of Upbringing, Books Do Furnish a Room'
(6, 'David', 'Olusoga', 'CBE'),
-- Davd Olusoga wrote a book called 'Black and British. A Forgotten History'
(7, 'Roald', 'Dahl', ' '),
-- Roald Dahl wrote 'The BFG', 'Matilda', 'The Enormous Crocodile' 
(8, 'Emily', 'Brontë', ' '),
-- Emily Brontë wrote the classic 'Wuthering Heights' 
(9, 'Rabindranath', 'Tagore', ' '),
-- Rabindranath Tagore wrote a book called 'Collected Poems and Plays of Rabindranath Tagore'
(10, 'Malorie', 'Blackman', 'OBE');
-- Malorie Blackman wrote a book called 'Noughts and Crosses'
SELECT*
FROM author; 