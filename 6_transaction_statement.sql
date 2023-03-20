use library;

-- using a transaction statement to check this works nicely before commiting the changes
start transaction;
-- update to add Shade's book collection to the book table
insert into book(title, published, author_id)
values 
    ('A Question of Upbringing, Books Do Furnish a Room', null, 5),
    ('Black and British. A Forgotten History', null, 6),
    ('The BFG', null, 7),
    ('Matilda', null, 7),
    ('The Enormous Crocodile', null, 7),
    ('Wuthering Heights', null, 8),
    ('Collected Poems and Plays of Rabindranath Tagore', null, 9),
    ('Noughts and Crosses', null, 10);

-- if we ran this transactional statement to test the insert we could use the rollback statement to ensure nothing was changed and then change it to commit if we got no errors.
-- rollback;
commit;

