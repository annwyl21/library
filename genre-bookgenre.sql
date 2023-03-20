create database library;

use library;

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

select *
from genre;

ALTER TABLE book
ADD COLUMN genre_id int,
ADD foreign key (genre_id) references genre(genre_id);

create table book_genre
(genre_id INT NOT NULL);

ALTER TABLE book_genre
ADD COLUMN book_id INT,
ADD FOREIGN KEY (book_id) REFERENCES book (book_id); 



INSERT INTO book_genre (book_id, genre_id) 
VALUES 
(1, 11),
(1, 12),  
(2, 12),
(3, 3),
(3, 12),
(4, 3),
(4, 13),
(5, 14),
(6, 1),
(7, 15),
(7, 10),
(7, 8),
(8 , 15),
(8 , 10),
(8 , 8),
(9, 16),
(10, 9),
(10, 17); 











