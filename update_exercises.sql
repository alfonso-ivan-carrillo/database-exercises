USE codeup_test_db;

SELECT 'All albums in table' AS 'Question';
SELECT name FROM albums;
-- UPDATE albums SET sales = sales * 10;

-- instructor solution
-- SELECT name AS 'Hit Records' FROM albums;

SELECT 'Albums released before 1980' AS 'Question';
SELECT name FROM albums WHERE release_date < 1981;
UPDATE albums SET release_date = 1980 WHERE release_date < 1980;
UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1980;

SELECT 'All albums by Michael Jackson' AS 'Question';
SELECT name FROM albums WHERE artist = "michael jackson";
UPDATE albums SET artist = "Peter Jackson" WHERE artist = "Michael Jackson";