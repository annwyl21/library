use library;

-- insert a new adventure book
insert into book (title, published) values ('Moby Dick', 1851);
-- tag it as an adventure book in the genre bridging table
insert into book_genre(genre_id, book_id) values (10, 13);
-- but I have not inserted Herman Melville as the author so the author will be null

-- show me all the books that are categoried as 'adventure'
-- joins 4 tables
select
	book.title as "Book Title",
    book.published as "Year of Publication", -- there are null results here because this data is simply being displayed and not linked to by a table join
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

-- do we know about any adventure books where we don't have the title or author?
select
	book.title as "Book Title",
    book.published as "Year of Publication",
    concat(author.first_name, ' ', author.last_name, ' ', author.title) as 'Author',
    genre.genre_type as 'Genre'
from genre
inner join book_genre
on book_genre.genre_id = genre.genre_id
inner join book 
on book.book_id = book_genre.book_id
left outer join author -- the left join here will retrieve the data inside the joined table that corresponds to any data that has a null author
on author.author_id = book.author_id
where genre_type like '%Adventure%';