USE sql_practice_db;

-- ==================================================
-- String Functions
-- ==================================================

-- Combine strings
SELECT CONCAT('Hello', ' ', 'World') AS greeting;

-- Combine first name and last name manually
SELECT CONCAT('Aafrin', ' ', 'Multani') AS full_name;

-- Length of string in bytes
SELECT LENGTH('Aafrin') AS string_length;

-- Number of characters in a string
SELECT CHAR_LENGTH('हिंदी') AS character_length;

-- Convert to lowercase
SELECT LOWER('MySQL') AS lower_text;

-- Convert to uppercase
SELECT UPPER('hello') AS upper_text;

-- Replace part of a string
SELECT REPLACE('abc', 'b', 'x') AS replaced_text;

-- Remove leading and trailing spaces
SELECT TRIM('  hello  ') AS trimmed_text;


-- ==================================================
-- Date and Time Functions
-- ==================================================

-- Current date and time
SELECT NOW() AS current_datetime;

-- Current date only
SELECT CURDATE() AS current_date;

-- Current time only
SELECT CURTIME() AS current_time;

-- Extract only date from current datetime
SELECT DATE(NOW()) AS extracted_date;

-- Get month name from a date
SELECT MONTHNAME('2025-05-03') AS month_name;

-- Extract year from current datetime
SELECT YEAR(NOW()) AS current_year;

-- Extract day from a date
SELECT DAY('2025-05-03') AS day_of_month;

-- Difference between two dates in days
SELECT DATEDIFF('2025-06-01', '2025-05-01') AS date_difference;


-- ==================================================
-- Numeric Functions
-- ==================================================

-- Round number to 2 decimal places
SELECT ROUND(12.6789, 2) AS rounded_value;

-- Round down to nearest whole number
SELECT FLOOR(5.9) AS floor_value;

-- Round up to nearest whole number
SELECT CEIL(5.1) AS ceil_value;

-- Absolute value
SELECT ABS(-10) AS absolute_value;

-- Remainder after division
SELECT MOD(10, 3) AS remainder_value;

-- Random decimal number between 0 and 1
SELECT RAND() AS random_value;


-- ==================================================
-- NULL Handling Functions
-- ==================================================

-- Replace NULL with default value
SELECT IFNULL(NULL, 'N/A') AS ifnull_result;

-- Return first non-NULL value from list
SELECT COALESCE(NULL, '', 'Hello') AS coalesce_result;


-- ==================================================
-- Aggregate Functions on students table
-- ==================================================

-- Show current students data
SELECT * FROM students;

-- Count total rows in students table
SELECT COUNT(*) AS total_students
FROM students;

-- Average marks of all students
SELECT AVG(marks) AS average_marks
FROM students;

-- Total marks of all students
SELECT SUM(marks) AS total_marks
FROM students;

-- Minimum marks
SELECT MIN(marks) AS minimum_marks
FROM students;

-- Maximum marks
SELECT MAX(marks) AS maximum_marks
FROM students;


-- ==================================================
-- Functions with column examples
-- ==================================================

-- Show student names in uppercase
SELECT id, UPPER(name) AS upper_name
FROM students;

-- Show student names in lowercase
SELECT id, LOWER(name) AS lower_name
FROM students;

-- Show length of each student name
SELECT id, name, LENGTH(name) AS name_length
FROM students;

-- Show rounded marks after dividing by 3
SELECT id, name, marks, ROUND(marks / 3, 2) AS rounded_marks
FROM students;

-- Show age absolute value example
SELECT id, name, age, ABS(age) AS absolute_age
FROM students;

-- Show current date and time with each student row
SELECT id, name, NOW() AS checked_at
FROM students;