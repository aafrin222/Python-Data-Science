USE sql_practice_db;

-- Create students_2023 table
CREATE TABLE students_2023 (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    batch VARCHAR(20)
);

-- Create students_2024 table
CREATE TABLE students_2024 (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    batch VARCHAR(20)
);

-- Insert sample data into students_2023
INSERT INTO students_2023 (id, name, batch)
VALUES
(1, 'Alice', '2023'),
(2, 'Bob', '2023'),
(3, 'Charlie', '2023');

-- Insert sample data into students_2024
INSERT INTO students_2024 (id, name, batch)
VALUES
(4, 'David', '2024'),
(5, 'Emma', '2024'),
(6, 'Bob', '2024');

-- View both tables
SELECT * FROM students_2023;
SELECT * FROM students_2024;

-- UNION
-- Combines results and removes duplicate rows
SELECT name, batch FROM students_2023
UNION
SELECT name, batch FROM students_2024;

-- UNION ALL
-- Combines results and keeps duplicate rows
SELECT name, batch FROM students_2023
UNION ALL
SELECT name, batch FROM students_2024;

-- UNION with ORDER BY
-- Sort final combined result by name
SELECT name, batch FROM students_2023
UNION
SELECT name, batch FROM students_2024
ORDER BY name;