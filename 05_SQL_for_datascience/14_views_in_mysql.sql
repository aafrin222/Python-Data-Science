USE sql_practice_db;

-- Show all data from employees table before creating the view
SELECT * FROM employees;

-- Create a view that shows only public employee details
CREATE VIEW public_employees AS
SELECT name, department, salary
FROM employees;

-- View all data from the created view
SELECT * FROM public_employees;

-- Filter data from the view
SELECT * FROM public_employees
WHERE department = 'IT';

-- Replace the view with a new version
-- This updated view will show only name and department
CREATE OR REPLACE VIEW public_employees AS
SELECT name, department
FROM employees;

-- Check the updated view
SELECT * FROM public_employees;

-- Create another practical view for adult employees
CREATE VIEW adult_employees AS
SELECT id, name, department, age, salary
FROM employees
WHERE age >= 18;

-- Check the adult_employees view
SELECT * FROM adult_employees;

-- Drop the public_employees view
-- DROP VIEW public_employees;

-- Drop the adult_employees view
-- DROP VIEW adult_employees;