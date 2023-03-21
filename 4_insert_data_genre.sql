-- There is additional data that needs to be inserted into the book_genre table located in file 6,
-- after the transactional statement where the books are inserted. 
-- It had to go there because the book genre data references some of that data inserted as part of the transactional statement.

-- create genre table
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

ALTER TABLE book
ADD COLUMN genre_id int,
ADD foreign key (genre_id) references genre(genre_id);

create table book_genre
(genre_id INT NOT NULL);

ALTER TABLE book_genre
ADD COLUMN book_id INT,
ADD FOREIGN KEY (book_id) REFERENCES book (book_id); 

INSERT INTO genre (genre_type)
VALUES
('feminism'),
('data');

INSERT INTO genre (genre_type)
VALUES

('Non-fiction: Autobiography');

INSERT INTO genre (genre_type)
VALUES

('Fiction: Satire');

INSERT INTO genre (genre_type)
VALUES

('Fiction: Children');

INSERT INTO genre (genre_type)
VALUES

('Poetry');

INSERT INTO genre (genre_type)
VALUES

('Non-fiction:Gothic');

select *
from genre;

select * from book;

select * from book_genre;

