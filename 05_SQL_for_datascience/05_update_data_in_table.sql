-- Create a new database for SQL update practice
CREATE DATABASE sql_practice_db;

-- Select the database
USE sql_practice_db;

-- Create a students table
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    grade VARCHAR(20),
    city VARCHAR(50),
    marks INT
);

-- Insert sample data into students table
INSERT INTO students (id, name, age, grade, city, marks) VALUES
(1, 'Ayesha Khan', 16, '10th', 'Ahmedabad', 78),
(2, 'Ravi Sharma', 17, '11th', 'Surat', 85),
(3, 'Meena Joshi', 15, '9th', 'Vadodara', 67),
(4, 'Arjun Patel', 16, '10th', 'Rajkot', 74),
(5, 'Sara Sheikh', 17, '12th', 'Ahmedabad', 91),
(6, 'Vikram Singh', 15, '9th', 'Surat', 59),
(7, 'Neha Verma', 16, '10th', 'Vadodara', 88),
(8, 'Imran Ali', 17, '11th', 'Rajkot', 72),
(9, 'Pooja Mehta', 15, '9th', 'Ahmedabad', 64),
(10, 'Kabir Das', 16, '10th', 'Surat', 81),
(11, 'Fatima Noor', 17, '12th', 'Vadodara', 95),
(12, 'Rohan Desai', 15, '9th', 'Rajkot', 54),
(13, 'Anjali Shah', 16, '10th', 'Ahmedabad', 76),
(14, 'Zaid Khan', 17, '11th', 'Surat', 69),
(15, 'Kiran Yadav', 15, '9th', 'Vadodara', 61);

-- View the original table data
SELECT * FROM students;

-- --------------------------------------------------
-- UPDATE PRACTICE
-- --------------------------------------------------

-- Update grade of the student whose id is 2
UPDATE students
SET grade = '12th'
WHERE id = 2;

-- Update age and grade of the student whose id is 3
UPDATE students
SET age = 17, grade = '10th'
WHERE id = 3;

-- Promote all students from 9th grade to 10th grade
UPDATE students
SET grade = '10th'
WHERE grade = '9th';

-- Increase age by 1 for students younger than 18
UPDATE students
SET age = age + 1
WHERE age < 18;

-- Replace NULL grades with 'Unknown'
-- This query is for learning purpose; it will work only if some grade values are NULL
UPDATE students
SET grade = 'Unknown'
WHERE grade IS NULL;

-- Dangerous query example:
-- Update age of all students to 18
-- Run this only if you intentionally want to change every row
UPDATE students
SET age = 18;

-- View final updated table
SELECT * FROM students;

