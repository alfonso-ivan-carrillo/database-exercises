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

