USE employees;

#from subqueries lesson
SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;

# Exercise 1
SELECT CONCAT(first_name, ' ', last_name) AS name
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
    );

#Exercise 2  part 1
SELECT title
FROM  titles
WHERE emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE first_name = 'Aamod'
          );
# part 2
SELECT title
FROM  titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
)
GROUP BY title;

# Exercise 3
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE gender = 'f' AND to_date >= now()
);

# Instructor Solution to exercise 3
SELECT first_name, last_name
FROM employees
WHERE gender = 'F'
AND emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > CURDATE()
    );

# Bonus 1
SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'f' AND to_date >= now()
        )
);

# Instructor Solution
SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE to_date > CURDATE()
      AND emp_no IN (
          SELECT emp_no
          FROM employees
          WHERE gender = 'F'
        )
);


# Bonus 2
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
        SELECT emp_no
        FROM salaries
        WHERE salary IN (
            SELECT MAX(salary)
            FROM salaries
        )
);

# Instructor Solution
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE salary = (SELECT MAX(salary) FROM salaries)
    )