USE codeup_test_db;
CREATE TABLE IF NOT EXISTS albums (
            id INT UNSIGNED NOT NULL AUTO_INCREMENT,
            artist CHAR(50) NOT NULL,
            name CHAR(50) NOT NULL,
            release_date DATE,
            sales INT UNSIGNED NOT NULL,
            genre CHAR(20),
            PRIMARY KEY (id)
);