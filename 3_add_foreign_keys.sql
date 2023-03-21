use library;

-- alter book table to add author_id from Shade's author table
ALTER TABLE book
ADD COLUMN author_id int,
ADD foreign key(author_id) references author(author_id);

-- alter book_loan table to add book_id from Ellen's book table
ALTER TABLE book_loan
ADD COLUMN book_id int,
ADD foreign key (book_id) references book(book_id);

-- alter borrower table to add address_id from Mati's address table
ALTER TABLE borrower
ADD COLUMN address_id int,
ADD foreign key (address_id) references address(address_id);

ALTER TABLE book
ADD COLUMN genre_id int,
ADD foreign key (genre_id) references genre(genre_id);

create table book_genre
(genre_id INT NOT NULL);

ALTER TABLE book_genre
ADD COLUMN book_id INT,
ADD FOREIGN KEY (book_id) REFERENCES book (book_id); 