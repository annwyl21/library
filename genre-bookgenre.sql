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
-- FOREIGN KEY (book_id) REFERENCES book (book_id) 






