USE sql_practice_db;

-- Create a new table to practice constraints
CREATE TABLE employees (
    id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    department VARCHAR(50) DEFAULT 'General',
    age INT,
    salary DECIMAL(10,2),
    CONSTRAINT chk_age CHECK (age >= 18),
    CONSTRAINT chk_salary CHECK (salary >= 0)
);

-- View table structure
DESC employees;

-- Insert valid data
INSERT INTO employees (id, name, email, department, age, salary)
VALUES (1, 'Ayesha Khan', 'ayesha@gmail.com', 'HR', 25, 35000.00);

-- Insert data without department
-- Default value 'General' will be used
INSERT INTO employees (id, name, email, age, salary)
VALUES (2, 'Ravi Sharma', 'ravi@gmail.com', 28, 42000.00);

-- View inserted data
SELECT * FROM employees;