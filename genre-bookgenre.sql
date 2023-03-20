create database library;

use library;

create table genre
(genre_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
genre_type VARCHAR(100) NOT NULL);

INSERT INTO genre (genre_id, genre_type)
VALUES 
(1, 'Non-fiction: History'),
(2, 'Non-fiction: Philosophy'),
(3, 'Non-fiction: Geography'),
(4, 'Non-fiction: Biology'),
(5, 'Non-fiction: Chemistry'),

(6, 'Fiction: Science Fiction'),
(7, 'Fiction: Thriller'),
(8, 'Fiction: Fantasy'),
(9, 'Fiction: Romance'),
(10,'Fiction: Adventure');

select *
from genre;

create table book_genre
(genre_id INT NOT NULL);
-- FOREIGN KEY (book_id) REFERENCES book (book_id) 






