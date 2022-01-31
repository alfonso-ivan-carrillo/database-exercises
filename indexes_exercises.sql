USE employees;

DESCRIBE departments;
#dept_no -> PRI  & dept_name has UNI

DESCRIBE dept_emp;
#emp_no -> PRI & dept_no -> PRI

DESCRIBE dept_manager;
#emp_no -> PRI & dept_no -> PRI

DESCRIBE employees;
#emp_no -> PRI

DESCRIBE salaries;
#emp_no -> has PRI & from_date -> PRI

DESCRIBE titles;
#emp_no -> has PRI & title -> PRI & from_date -> PRI

USE codeup_test_db;

DESCRIBE albums;
DESCRIBE quotes;

SELECT * FROM albums;

ALTER TABLE albums
    ADD UNIQUE (artist, name);

DESCRIBE albums;
# INSERT INTO albums (artist, name, sales)
# VALUES  ('Meat Loaf', 'Bat Out of Hell', 20 );
