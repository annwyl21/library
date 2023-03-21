-- join book and author table and create view

create view book_data_view as
select
	concat(author.first_name, ' ', author.last_name, ' ',  author.title) as 'Author',
    book.title as 'Book Title'
from author
inner join book
on book.author_id = author.author_id;

