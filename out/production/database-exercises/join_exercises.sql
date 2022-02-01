CREATE DATABASE IF NOT EXISTS join_test_db;

USE join_test_db;

CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
                                             ('bob', 'bob@example.com', 1),
                                             ('joe', 'joe@example.com', 2),
                                             ('sally', 'sally@example.com', 3),
                                             ('adam', 'adam@example.com', 3),
                                             ('jane', 'jane@example.com', null),
                                             ('mike', 'mike@example.com', null);

DESCRIBE roles;
DESCRIBE users;

INSERT INTO users (name, email, role_id)
VALUES ('ethan', 'ethan@example.com', 2),
       ('kathy', 'kathy@example.com', 2),
       ('bella', 'bella@example.com', 2),
       ('jack', 'jack@example.com', null);

SELECT * FROM roles;
SELECT * FROM users;

#Inner Join
SELECT users.name AS user_name, users.email AS email, roles.name AS role_name
FROM users
JOIN roles ON users.role_id = roles.id;

#Inner Join
SELECT u.name AS name, u.email AS email, r.name
FROM users AS u
JOIN roles AS r ON u.role_id = r.id;

#Left Join
SELECT user.name AS name, user.email AS email, role.name AS role_name
FROM users AS user
LEFT JOIN roles AS role ON user.role_id = role.id;

#Right Join
SELECT u.name AS name, r.name AS role
FROM users AS u
RIGHT JOIN roles AS r ON u.role_id = r.id;

SELECT COUNT(users.email), COUNT(roles.name)
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

#Instructor solution
SELECT roles.name AS 'Role', COUNT(u.role_id)
FROM roles
LEFT JOIN users u ON roles.id =  u.role_id
GROUP BY roles.name;

USE employees;

SELECT * FROM departments;
SELECT * FROM dept_manager;

SELECT d.dept_name AS Department, CONCAT(emp.first_name, ' ', emp.last_name) AS Department_Manager
FROM employees AS emp
JOIN dept_manager AS dm ON dm.emp_no = emp.emp_no
JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE dm.to_date >= now()
ORDER BY d.dept_name;

SELECT d.dept_name AS Department, CONCAT(emp.first_name, ' ', emp.last_name) AS Department_Manager
FROM employees AS emp
         JOIN dept_manager AS dm ON dm.emp_no = emp.emp_no
         JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE emp.gender = 'f' AND dm.to_date >= now()
ORDER BY d.dept_name;

SELECT t.title AS title, COUNT(e.emp_no) AS total
FROM titles AS t
JOIN employees AS e ON e.emp_no = t.emp_no
JOIN dept_emp AS de ON de.emp_no = e.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
WHERE dept_name = 'Customer Service' AND t.to_date >= now() AND de.to_date >= now()
GROUP BY 1 ;

#instructor solution for above problem
SELECT t.title AS 'Title', COUNT(t.emp_no) AS 'Count'
FROM titles AS t
JOIN dept_emp AS de ON t.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE t.to_date > curdate()
AND d.dept_name = 'Customer Service'
AND de.to_date > CURDATE()
GROUP BY title;


SELECT d.dept_name AS Department, CONCAT(emp.first_name, ' ', emp.last_name) AS Department_Manager, s.salary AS Salary
FROM employees AS emp
         JOIN dept_manager AS dm ON dm.emp_no = emp.emp_no
         JOIN departments AS d ON d.dept_no = dm.dept_no
         JOIN salaries AS s ON s.emp_no = emp.emp_no
WHERE s.to_date >= now();


SELECT e.first_name AS name, dm.emp_no AS employee_id, s.salary AS salary
FROM employees AS e
JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
JOIN salaries s on e.emp_no = s.emp_no
WHERE s.to_date >= now();

SELECT CONCAT(e.first_name, ' ', e.last_name) AS employee, d.dept_name AS Department, dm.emp_no
FROM employees AS e
JOIN dept_emp AS de ON de.emp_no = e.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
JOIN dept_manager AS dm ON dm.emp_no = e.emp_no;



