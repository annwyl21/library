select
	concat(borrower.first_name, ' ', borrower.last_name) as 'Borrower',
    address.street as 'Street Address',
    book.title as 'Book on Loan'
from borrower
inner join book_loan
on book_loan.borrower_id = borrower.borrower_id
left outer join address
on borrower.address_id = address.address_id
inner join book
on book.book_id = book_loan.book_id;
