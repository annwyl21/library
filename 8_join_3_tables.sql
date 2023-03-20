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
on author.author_id = book.author_id;
where loan_date < curdate();
-- where address.street is null;
