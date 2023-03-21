use library;

-- show me all the books that are categoried as 'adventure'
-- joins 4 tables
select
	book.title as "Book Title",
    concat(author.first_name, ' ', author.last_name, ' ', author.title) as 'Author',
    genre.genre_type as 'Genre'
from genre
inner join book_genre
on book_genre.genre_id = genre.genre_id
inner join book
on book.book_id = book_genre.book_id
inner join author
on author.author_id = book.author_id
where genre_type like '%adventure%';

-- do we know about any adventure books where we don't have all the info?
select
	book.title as "Book Title",
    concat(author.first_name, ' ', author.last_name, ' ', author.title) as 'Author',
    genre.genre_type as 'Genre'
from genre
inner join book_genre
on book_genre.genre_id = genre.genre_id
right outer join book
on book.book_id = book_genre.book_id
right outer join author
on author.author_id = book.author_id
where genre_type like '%Adventure%';