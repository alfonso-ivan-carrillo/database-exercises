USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
            id INT UNSIGNED NOT NULL AUTO_INCREMENT,
            artist CHAR(250) NOT NULL,
            name CHAR(250) NOT NULL,
            release_date INT UNSIGNED,
            genre CHAR(220),
            sales FLOAT UNSIGNED NOT NULL,
            PRIMARY KEY (id)
);