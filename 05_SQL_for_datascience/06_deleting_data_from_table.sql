USE sql_practice_db;

-- Show current data before deletion
SELECT * FROM students;

-- Delete the student whose id is 2
DELETE FROM students
WHERE id = 2;

-- Delete all students in 9th grade
DELETE FROM students
WHERE grade = '9th';

-- Delete all students younger than 16
DELETE FROM students
WHERE age < 16;

-- Delete students whose grade is NULL
DELETE FROM students
WHERE grade IS NULL;

-- Delete all rows from the students table
-- Warning: this removes all data but keeps the table
-- DELETE FROM students;

-- Drop the entire students table
-- Warning: this removes both data and table structure
-- DROP TABLE students;

-- Check the table after deletion
SELECT * FROM students;
