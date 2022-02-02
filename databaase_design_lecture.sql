USE codeup_test_db;

DESCRIBE quotes;
SELECT * FROM quotes;

CREATE TABLE IF NOT EXISTS authors (
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

# Authors to Quotes table - One to Many Relationship
CREATE TABLE IF NOT EXISTS quotes (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    content TEXT NOT NULL,
    author_id INT UNSIGNED NOT NULL ,
    PRIMARY KEY (id),
    FOREIGN KEY (author_id) REFERENCES authors (id)
);

INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'),
        'I love deadlines. I love the whooshing noise they make as they go by.');
INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'),
        'Time is an illusion. Lunchtime doubly so.');
INSERT INTO quotes (author_id, content)
values ((select id from authors where first_name = 'Mark' and last_name = 'Twain'),
        'Clothes make the man. Naked people have little or no influence on society.');
INSERT INTO quotes (author_id, content)
values ((select id from authors where first_name = 'Kurt' and last_name = 'Vonnegut'),
        'The universe is a big place, perhaps the biggest.');
INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'), 'Don''t Panic.');

INSERT INTO quotes (author_id, content)
VALUES ((SELECT  id FROM authors WHERE first_name = 'Junot' AND last_name = 'Diaz'), 'The half-life of love is forever.');
INSERT INTO quotes (author_id, content)
VALUES ((SELECT id FROM authors WHERE first_name = 'Cormac' AND last_name = 'McCarthy'),
        'Keep a fire burning, no matter how small, no matter how hidden.');


/*
Quote to Topic - Many to Many Relationship
Quote can have many topics
Topic can have many quotes
*/

CREATE TABLE topics (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        name VARCHAR(255),
                        PRIMARY KEY (id)
);

INSERT INTO topics(name) VALUES
                             ('Space and Time'),
                             ('Humor'),
                             ('Office Life'),
                             ('Hitchiker''s Guide to the Galaxy'),
                             ('Love');


# Associative table or Join table - quote_topic
CREATE TABLE quote_topic (
                             quote_id INTEGER UNSIGNED NOT NULL,
                             topic_id INTEGER UNSIGNED NOT NULL,
                             FOREIGN KEY (quote_id) REFERENCES quotes(id),
                             FOREIGN KEY (topic_id) REFERENCES topics(id)
);

INSERT INTO quote_topic(quote_id, topic_id)
VALUES (1, 2), (1, 3), (2, 4), (3, 1),
       (3, 2), (3, 3), (3, 4), (4, 2), (5, 1), (6, 5), (7,5);

SELECT * FROM quote_topic;















