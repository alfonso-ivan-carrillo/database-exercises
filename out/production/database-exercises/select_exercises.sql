USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd' AS 'Question';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released,' AS 'Question';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre for Nirvana album Nevermind' AS 'Question';
SELECT genre FROM albums WHERE artist = 'Nirvana';

SELECT 'The albums released in the 1990s are' AS 'Question';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Albums that had less than 20 Million in certified sales' AS 'Question';
SELECT name FROM albums WHERE sales < 20;

SELECT 'All rock albums' AS 'Question';
SELECT name FROM albums WHERE genre = 'Rock';