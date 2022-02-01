USE employees;

# In sql the = is not an assignment operator like in java or javascript, it an  equality operator
SELECT * FROM employees WHERE hire_date = '1985-01-01';

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no < 10026;


# LIKE Statement
# will look for 'sus' anywhere in the string '%  %'
SELECT first_name
FROM employees
WHERE first_name LIKE '%sus%';

# will look for 'sus' at the end of the string '%  '
SELECT first_name
FROM employees
WHERE first_name LIKE '%sus';

# will look for 'Ra' at the beginning of the string '  %'
SELECT first_name
FROM employees
WHERE first_name LIKE 'Ra%';

# BETWEEN Statement
# statement is intended for numbers and results will be inclusive
SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no BETWEEN 10026 AND 10082;

# IN statement - think of it as IN - Included in
# will return results will include only results that have those strings in it
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');

SELECT first_name
FROM employees
WHERE first_name IN ('Susanna', 'Peter', 'Joesph');


# NULL statement
SELECT *
FROM titles
WHERE to_date IS NOT NULL;

# Chaining statements
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name IN ('Herber', 'Baek')
  AND emp_no < 20000;

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no < 20000
AND last_name IN ('Herber', 'Baek')
OR first_name = 'Shrihar';

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no < 20000
    AND (last_name IN ('Herber', 'Baek')
   OR first_name = 'Shrihar');