-- join borrower, book_loan, address, author to create a 4 table join that shows overdue books and notifies us where the address is unknown

select
	book_loan.loan_date as Overdue,
	concat(borrower.first_name, ' ', borrower.last_name) as 'Borrower',
    ifnull (address.street, 'address unknown') as 'Street Address',
    book.title as 'Book on Loan',
    concat(author.first_name, ' ', author.last_name, ' ', author.title) as Author
from borrower
inner join book_loan
on book_loan.borrower_id = borrower.borrower_id
left outer join address
on borrower.address_id = address.address_id
inner join book
on book.book_id = book_loan.book_id
inner join author
on author.author_id = book.author_id
where loan_date < curdate();
-- where address.street is null;

-- join 3 tables to turn this less readable briding table into data
select * from book_genre;

-- Join book title from books, with genre type from genre, using the bridging table called book-genre
select
	book.title,
    genre.genre_type
from book_genre
inner join book
on book.book_id = book_genre.book_id
inner join genre
on genre.genre_id = book_genre.genre_id;
