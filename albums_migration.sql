USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
            id INT UNSIGNED NOT NULL AUTO_INCREMENT,
            artist CHAR(50) NOT NULL,
            name CHAR(50) NOT NULL,
            release_date INT UNSIGNED,
            sales INT UNSIGNED NOT NULL,
            genre CHAR(20),
            PRIMARY KEY (id)
);