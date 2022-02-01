# SELECT columns FROM table LIMIT count [OFFSET count];
USE employees;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name LIKE 'M%'
LIMIT 10;

# pagination
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name LIKE 'M%'
LIMIT 10 OFFSET 50;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

SELECT emp_no
FROM employees.salaries
ORDER BY salary DESC
LIMIT 5;


# Try to think of your results as batches, sets, or pages. The first five results are your first page.
# The five after that would be your second page, etc. Update the previous query to find the tenth page of results.
# The employee number results should be:
#
# 254466
# 492164
# 66793
# 492164

SELECT emp_no
FROM employees.salaries
ORDER BY salary DESC
LIMIT 5 OFFSET 45;
