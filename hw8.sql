CREATE TABLE employee (
  id        INTEGER PRIMARY KEY,
  name      VARCHAR(50)  NOT NULL,
  birthday  DATE,
  email     VARCHAR(100) UNIQUE
);

UPDATE employee
SET email = CONCAT('user', id, '@example.com')
WHERE id BETWEEN 1 AND 5;

UPDATE employee
SET email = REGEXP_REPLACE(email, '@.*$', '@company.com')
WHERE name ILIKE '% %';

UPDATE employee
SET name = CONCAT('[70s] ', name)
WHERE birthday BETWEEN DATE '1970-01-01' AND DATE '1979-12-31';

UPDATE employee
SET birthday = DATE '1990-01-01'
WHERE email ILIKE '%@temp.%';

UPDATE employee
SET name = SUBSTRING(name FROM 1 FOR 10)
WHERE id % 2 = 0;

DELETE FROM employee
WHERE id IN (101,102,103);

DELETE FROM employee
WHERE name ILIKE 'test%';

DELETE FROM employee
WHERE birthday < DATE '1970-01-01';

DELETE FROM employee
WHERE email ILIKE '%@example.com';

DELETE FROM employee
WHERE email IS NULL OR name IS NULL;
