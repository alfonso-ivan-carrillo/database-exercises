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

