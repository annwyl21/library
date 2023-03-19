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

-- update to add Shade's book collection
insert into book(title, published, author_id)
values 
    ('A Question of Upbringing, Books Do Furnish a Room', null, 5),
    ('Black and British. A Forgotten History', null, 6),
    ('The BFG', null, 7),
    ('Matilda', null, 7),
    ('The Enormous Crocodile', null, 7),
    ('Wuthering Heights', null, 8),
    ('Collected Poems and Plays of Rabindranath Tagore', null, 9)
    ('Noughts and Crosses', null, 10)
