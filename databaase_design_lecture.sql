USE codeup_test_db;

DESCRIBE quotes;
SELECT * FROM quotes;

CREATE TABLE authors (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(100),
    PRIMARY KEY (id)
);

INSERT INTO authors (first_name, last_name)
VALUES ('Douglas', 'Adams'),
       ('Junot', 'Diaz'),
       ('Cormac', 'McCarthy');

INSERT INTO authors(first_name, last_name) VALUES ('Mark', 'Twain'), ('Kurt', 'Vonnegut');