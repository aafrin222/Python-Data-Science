USE sql_practice_db;

-- Show current employees data
SELECT * FROM employees;

-- ==================================================
-- Subquery in WHERE clause
-- Employees whose salary is greater than average salary
-- ==================================================
SELECT name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- ==================================================
-- Subquery in FROM clause
-- Department-wise average salary greater than 50000
-- ==================================================
SELECT department, avg_salary
FROM (
    SELECT department, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
) AS dept_avg
WHERE avg_salary > 50000;

-- ==================================================
-- Create projects table for SELECT subquery example
-- ==================================================
CREATE TABLE projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(100),
    employee_id INT
);

-- Insert sample data into projects table
INSERT INTO projects (project_name, employee_id)
VALUES
('Dashboard System', 1),
('HR Portal', 1),
('Sales Report', 2),
('Data Cleaning Tool', 3),
('Employee Tracker', 3),
('ML Analysis', 3);

-- Show projects data
SELECT * FROM projects;

-- ==================================================
-- Subquery in SELECT clause
-- Count projects assigned to each employee
-- ==================================================
SELECT name,
       (SELECT COUNT(*)
        FROM projects
        WHERE projects.employee_id = employees.id) AS project_count
FROM employees;

-- ==================================================
-- Correlated subquery
-- Employees earning more than their department average
-- ==================================================
SELECT name, department, salary
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department = e.department
);