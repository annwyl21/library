use library;

CREATE TABLE book
(book_id int not null auto_increment primary key,
title varchar(500) null,
published int null
);

-- 'year' was a sql keyword so I changed the column name to 'published'

-- I think I have to add the foreign key separately because the author table is not yet created
ALTER TABLE book
ADD COLUMN author_id int,
ADD foreign key(author_id) references author(author_id);

-- a test statement to bring back only the first 3 rows to confirm it works
-- returns null because no data has been entered yet
select *
from book
limit 3;
