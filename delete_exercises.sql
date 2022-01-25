USE codeup_test_db;

SELECT 'All albums released after 1991' AS 'Question';
-- SELECT name FROM albums WHERE release_date > 1991;

DELETE FROM albums WHERE release_date > 1991;

SELECT 'All disco albums' AS 'Question';
-- SELECT name FROM albums WHERE genre = "disco";

DELETE FROM albums WHERE genre = "disco";

SELECT 'All albums by The Beatles' AS 'Question';
-- SELECT name FROM albums WHERE artist = "The Beatles";

DELETE FROM albums WHERE artist = "The Beatles";