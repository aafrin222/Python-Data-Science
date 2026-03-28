USE sql_practice_db;

-- Check current autocommit status
SELECT @@autocommit;

-- Disable autocommit
SET autocommit = 0;

-- Show current table data before transaction practice
SELECT * FROM students;

-- =========================================
-- Transaction Example 1: ROLLBACK
-- This will undo the changes
-- =========================================

START TRANSACTION;

-- Temporarily increase marks of student with id = 1
UPDATE students
SET marks = marks + 5
WHERE id = 1;

-- Temporarily change city of student with id = 2
UPDATE students
SET city = 'Mumbai'
WHERE id = 2;

-- Check changes before rollback
SELECT * FROM students;

-- Undo all changes made after START TRANSACTION
ROLLBACK;

-- Check data after rollback
SELECT * FROM students;

-- =========================================
-- Transaction Example 2: COMMIT
-- This will save the changes permanently
-- =========================================

START TRANSACTION;

-- Increase marks of student with id = 3
UPDATE students
SET marks = marks + 10
WHERE id = 3;

-- Change city of student with id = 4
UPDATE students
SET city = 'Pune'
WHERE id = 4;

-- Check changes before commit
SELECT * FROM students;

-- Save all changes permanently
COMMIT;

-- Check data after commit
SELECT * FROM students;

-- Enable autocommit again
SET autocommit = 1;

-- Final autocommit status check
SELECT @@autocommit;