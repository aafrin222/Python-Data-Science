USE sql_practice_db;

-- Create students table for join practice
CREATE TABLE students_join (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Create marks table for join practice
CREATE TABLE marks (
    student_id INT,
    subject VARCHAR(50),
    score INT
);

-- Insert sample data into students table
INSERT INTO students_join (id, name)
VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');

-- Insert sample data into marks table
INSERT INTO marks (student_id, subject, score)
VALUES
(1, 'Math', 95),
(2, 'Math', 88),
(2, 'Science', 90);

-- View students table
SELECT * FROM students_join;

-- View marks table
SELECT * FROM marks;

-- INNER JOIN
-- Show only matching rows from both tables
SELECT students_join.name, marks.subject, marks.score
FROM students_join
INNER JOIN marks
ON students_join.id = marks.student_id;

-- LEFT JOIN
-- Show all students, even if marks are missing
SELECT students_join.name, marks.subject, marks.score
FROM students_join
LEFT JOIN marks
ON students_join.id = marks.student_id;

-- RIGHT JOIN
-- Show all rows from marks table, even if student record is missing
SELECT students_join.name, marks.subject, marks.score
FROM students_join
RIGHT JOIN marks
ON students_join.id = marks.student_id;

-- CROSS JOIN
-- Show all possible combinations of students and subjects
SELECT students_join.name, marks.subject
FROM students_join
CROSS JOIN marks;