use library

insert into book(title, published)
values 
    ('Invisible Women: Exposing Data Bias in a World Designed for Men', 2019),
    ('The Checklist Manifesto: How to Get Things Right', 2019),
    ('Vancouverism', 2019),
    ('In the Land of Invisible Women: A Female Doctor''s Journey in the Saudi Kingdom', 2008);

    -- uses an escape of ' inside the title to escape the apostrophe in the text
    -- \ did not work as an escape

insert into author(title, first_name, last_name)
values
    ('OBE', 'Caroline', 'Criado Perez'),
    ('MD', 'Atul', 'Gawande'),
    ('CM', 'Larry', 'Beasley'),
    ('MD', 'Quanta A', 'Ahmed');

-- potential conflict here because we use 'title' in book table and author table to mean different things
-- all of the letters in the title field for my authors come after their names

-- after I see the author table
-- I can work out what data needs to go in these insert statements 
-- that will run after I alter my book table to add the foreign key
--which can't be done until the author table has been created

update book
set author_id='insert foreign key here'
where book_id='1';

update book
set author_id='insert foreign key here'
where book_id='2';

update book
set author_id='insert foreign key here'
where book_id='3';

update book
set author_id='insert foreign key here'
where book_id='4';
