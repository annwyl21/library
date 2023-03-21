-- inserting data into the table created 
use library;

INSERT INTO borrower(first_name,last_name,email,phone)
values
 ('Lily', 'Hughes', 'lily.hughes@example.com', '07123456789'),
  ('Oliver', 'Patel', 'oliver.patel@example.com', '07234567890'),
  ('Ava', 'Campbell', 'ava.campbell@example.com', '07345678901'),
  ('Ethan', 'Collins', 'ethan.collins@example.com', '07456789012'),
  ('Mia', 'Khan', 'mia.khan@example.com', '07567890123'),
  ('William', 'Price', 'william.price@example.com', '07678901234'),
  ('Charlotte', 'Scott', 'charlotte.scott@example.com', '07789012345'),
  ('Jacob', 'Wright', 'jacob.wright@example.com', '07890123456'),
  ('Grace', 'Morris', 'grace.morris@example.com', '07901234567'),
  ('Noah', 'Bailey', 'noah.bailey@example.com', '07912345678');
  

SELECT*
FROM borrower;
