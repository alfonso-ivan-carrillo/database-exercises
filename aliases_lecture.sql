USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
LIMIT 25;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
ORDER BY full_name
LIMIT 25;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
GROUP BY full_name, last_name
ORDER BY last_name
LIMIT 25;

SELECT hire_date, COUNT(*)
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;

SELECT hire_date, COUNT(*) AS number_hired
FROM employees
GROUP BY hire_date
ORDER BY number_hired DESC
LIMIT 10;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees AS emp
GROUP BY full_name, last_name
ORDER BY last_name
LIMIT 25;

# Don't use aliases in WHERE clauses.
# It is not permissible to refer to a column alias in a WHERE clause, because the column value might
# not yet be determined when the WHERE clause is executed. This query will fail with an error:
#
# SELECT birth_date, CONCAT(first_name, ' ', last_name) AS full_name, gender
# FROM employees
# WHERE hire_date='1985-01-01'
#   AND full_name='Arie Staelin';

# WHERE is looking into the database, focused on a specific data in the database
# GROUP BY or ORDER BY is using the results of the query to provide the information, thus Alias can
# be used in the way because its using the results, not the actual data in the table/database