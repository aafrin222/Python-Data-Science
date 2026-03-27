USE schooldb;

-- View all records
SELECT * FROM student;

-- View specific columns
SELECT name, grade FROM student;

-- Students in 10th grade
SELECT * FROM student
WHERE grade = '10th';

-- Students older than 16
SELECT * FROM student
WHERE age > 16;

-- Comparison operators examples
SELECT * FROM student WHERE age = 16;
SELECT * FROM student WHERE grade != '12th';
SELECT * FROM student WHERE grade <> '12th';
SELECT * FROM student WHERE age > 16;
SELECT * FROM student WHERE age < 17;
SELECT * FROM student WHERE age >= 16;
SELECT * FROM student WHERE age <= 18;
SELECT * FROM student WHERE age BETWEEN 15 AND 17;
SELECT * FROM student WHERE grade IN ('10th', '12th');
SELECT * FROM student WHERE grade NOT IN ('9th', '11th');
SELECT * FROM student WHERE name LIKE 'A%';
SELECT * FROM student WHERE name NOT LIKE '%a';

-- Handling NULL values
SELECT * FROM student WHERE grade IS NULL;
SELECT * FROM student WHERE grade IS NOT NULL;

-- Combining conditions
SELECT * FROM student
WHERE grade = '10th' AND age > 16;

SELECT * FROM student
WHERE grade = '9th' OR grade = '12th';

SELECT * FROM student
WHERE (grade = '10th' OR grade = '11th') AND age >= 16;

-- Sorting results
SELECT * FROM student ORDER BY age ASC;
SELECT * FROM student ORDER BY name DESC;

-- Limiting results
SELECT * FROM student LIMIT 5;
SELECT * FROM student LIMIT 2, 5;

-- Wildcards with LIKE
SELECT * FROM student
WHERE name LIKE 'A%';

SELECT * FROM student
WHERE name LIKE '%sh';

SELECT * FROM student
WHERE name LIKE '%ar%';

SELECT * FROM student
WHERE name LIKE 'R____';

-- Date pattern matching with LIKE
SELECT * FROM student
WHERE date_of_birth LIKE '____-__-05';

SELECT * FROM student
WHERE date_of_birth LIKE '2025-05-%';

SELECT * FROM student
WHERE date_of_birth LIKE '2024-12-__';

SELECT * FROM student
WHERE date_of_birth LIKE '____-01-01';

SELECT * FROM student
WHERE date_of_birth LIKE '202_-__-__';