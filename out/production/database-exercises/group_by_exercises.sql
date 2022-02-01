USE employees;

SELECT DISTINCT title
FROM employees.titles;

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name
ORDER BY last_name;

SELECT last_name, first_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name, first_name
ORDER BY last_name, first_name;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND NOT last_name LIKE '%qu%';

SELECT count(*), last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND NOT last_name LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name;

SELECT count(*), gender
FROM employees
WHERE first_name OR (first_name ='Irena' OR first_name = 'Vidya' OR first_name ='Maya')
    AND gender
GROUP BY gender;