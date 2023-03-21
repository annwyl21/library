select
	book.title,
    genre.genre_type
from book_genre
inner join book
on book.book_id = book_genre.book_id
inner join genre
on genre.genre_id = book_genre.genre_id;
