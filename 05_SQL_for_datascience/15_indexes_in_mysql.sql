USE sql_practice_db;

-- Show all data from employees table
SELECT * FROM employees;

-- Create an index on email column
CREATE INDEX idx_email
ON employees(email);

-- Create a composite index on name and department
CREATE INDEX idx_name_department
ON employees(name, department);

-- View all indexes on employees table
SHOW INDEX FROM employees;

-- Search example using indexed email column
SELECT * FROM employees
WHERE email = 'ayesha@gmail.com';

-- Search example using indexed name and department columns
SELECT * FROM employees
WHERE name = 'Ayesha Khan' AND department = 'HR';

-- Drop the email index
DROP INDEX idx_email ON employees;

-- Drop the composite index
DROP INDEX idx_name_department ON employees;

-- View indexes again after dropping
SHOW INDEX FROM employees;