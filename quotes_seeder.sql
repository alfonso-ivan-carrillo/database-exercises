USE codeup_test_db;

INSERT INTO quotes (id, author_first_name, author_last_name, content)
-- VALUES(1, 'Douglas', 'Adams', 'Don''t Panic' );
-- VALUES (2, 'Junot', 'Diaz', "The half life of love is forever");
-- VALUES (3, 'Cormac', 'McCarthy', "keep the fire burning, no matter how small, no matter how hidden");

SELECT author_first_name, content FROM quotes;