use library; 

INSERT INTO book_loan(loan_date)
values
('2023-03-22'),
  ('2023-03-08'),
  ('2023-04-09'),
  ('2023-04-06'),
  ('2023-04-01'),
  ('2023-03-19'),
  ('2023-03-30'),
  ('2023-04-10'),
  ('2023-03-25'),
  ('2023-03-13');


 
 update book_loan
set borrower_id='1'
where loan_id='1';

update book_loan
set borrower_id='2'
where loan_id='2';

update book_loan
set borrower_id='3'
where loan_id='3';

update book_loan
set borrower_id='4'
where loan_id='4';

update book_loan
set borrower_id='5'
where loan_id='5';

update book_loan
set borrower_id='6'
where loan_id='6';

update book_loan
set borrower_id='7'
where loan_id='7';

update book_loan
set borrower_id='8'
where loan_id='8';

update book_loan
set borrower_id='9'
where loan_id='9';

update book_loan
set borrower_id='10'
where loan_id='10';



ALTER TABLE book_loan MODIFY loan_date date AFTER book_id;

SELECT *
FROM book_loan;