use library;

insert into book(title, published)
values 
    ('Invisible Women: Exposing Data Bias in a World Designed for Men', 2019),
    ('The Checklist Manifesto: How to Get Things Right', 2019),
    ('Vancouverism', 2019),
    ('In the Land of Invisible Women: A Female Doctor''s Journey in the Saudi Kingdom', 2008);

    -- uses an escape of ' inside the title to escape the apostrophe in the text
    -- \ did not work as an escape

update book
set author_id='1'
where book_id='1';

update book
set author_id='2'
where book_id='2';

update book
set author_id='3'
where book_id='3';

update book
set author_id='4'
where book_id='4';
