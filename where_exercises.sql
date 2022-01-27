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