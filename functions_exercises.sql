USE employees;

SELECT first_name, gender
FROM employees
WHERE first_name OR (first_name ='Irena' OR first_name = 'Vidya' OR first_name ='Maya')
    AND gender = 'm';

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name Like '%E';

SELECT *
FROM employees
WHERE last_name LIKE 'E%E';
# chain the e%e to find last names that begin and end with "e"

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND NOT last_name LIKE '%qu%';

# ascending order
SELECT first_name, last_name
FROM employees.employees
ORDER BY last_name;

# descending order
SELECT first_name, last_name
FROM employees.employees
ORDER BY last_name DESC;

# chain descending and ascending statements
SELECT first_name, last_name
FROM employees.employees
ORDER BY last_name DESC, first_name ASC;

SELECT first_name, last_name
FROM employees.employees
ORDER BY last_name DESC, first_name ASC, emp_no DESC;

SELECT first_name
FROM employees
GROUP BY first_name;

SELECT first_name, last_name, gender
FROM employees
WHERE first_name OR (first_name ='Irena' OR first_name = 'Vidya' OR first_name ='Maya')
ORDER BY first_name, emp_no DESC;

SELECT first_name, last_name
FROM employees.employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

SELECT first_name, last_name
FROM employees.employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

SELECT first_name, last_name
FROM employees.employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

SELECT *
FROM employees.employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no;

SELECT first_name, last_name
FROM employees.employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC , first_name DESC;

SELECT *
FROM employees.employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no desc;

SELECT CONCAT(first_name, ' ', last_name) AS 'full_name'
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name Like '%E';

SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25;

SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
  AND year(hire_date) BETWEEN 1990 AND 2000;

SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
  AND year(hire_date) BETWEEN 1990 AND 2000
ORDER BY hire_date DESC;

SELECT NOW();

SELECT CURDATE();

SELECT CURTIME();

SELECT CONCAT(
               'Teaching people to code for ',
               UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04'),
               ' seconds'
           );

SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
  AND year(hire_date) BETWEEN 1990 AND 2000
ORDER BY hire_date DESC;

SELECT DATEDIFF(CURDATE(), hire_date )
FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25
AND year(hire_date) BETWEEN 1990 AND 2000
ORDER BY hire_date DESC;
