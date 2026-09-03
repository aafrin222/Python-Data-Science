USE sql_practice_db;

-- ==================================================
-- GROUP BY
-- ==================================================

-- Count total students in each grade
SELECT grade, COUNT(*) AS total_students
FROM students
GROUP BY grade;

-- Calculate average marks for each grade
SELECT grade, AVG(marks) AS average_marks
FROM students
GROUP BY grade;

-- Calculate total marks for each grade
SELECT grade, SUM(marks) AS total_marks
FROM students
GROUP BY grade;

-- Find highest marks in each grade
SELECT grade, MAX(marks) AS highest_marks
FROM students
GROUP BY grade;

-- Find lowest marks in each grade
SELECT grade, MIN(marks) AS lowest_marks
FROM students
GROUP BY grade;


-- ==================================================
-- GROUP BY with Multiple Columns
-- ==================================================

-- Count students by city and grade
SELECT city, grade, COUNT(*) AS total_students
FROM students
GROUP BY city, grade;


-- ==================================================
-- WHERE with GROUP BY
-- ==================================================

-- Find average marks for students whose marks are above 60
-- WHERE filters rows before grouping
SELECT grade, AVG(marks) AS average_marks
FROM students
WHERE marks > 60
GROUP BY grade;


-- ==================================================
-- HAVING
-- ==================================================

-- Show grades having more than 2 students
-- HAVING filters groups after GROUP BY
SELECT grade, COUNT(*) AS total_students
FROM students
GROUP BY grade
HAVING COUNT(*) > 2;

-- Show grades whose average marks are greater than 70
SELECT grade, AVG(marks) AS average_marks
FROM students
GROUP BY grade
HAVING AVG(marks) > 70;


-- ==================================================
-- WHERE + GROUP BY + HAVING
-- ==================================================

-- First filter students with marks above 50
-- Then group them by grade
-- Then show only grades having average marks above 70
SELECT grade, AVG(marks) AS average_marks
FROM students
WHERE marks > 50
GROUP BY grade
HAVING AVG(marks) > 70;


-- ==================================================
-- WITH ROLLUP
-- ==================================================

-- Show total students for each grade
-- and an overall total at the end
SELECT grade, COUNT(*) AS total_students
FROM students
GROUP BY grade WITH ROLLUP;