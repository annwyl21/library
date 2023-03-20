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

