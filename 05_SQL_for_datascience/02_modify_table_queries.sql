USE student_db;

DESCRIBE students;

RENAME TABLE students TO student_details;

DESCRIBE student_details;

ALTER TABLE student_details
ADD COLUMN gender VARCHAR(10);

ALTER TABLE student_details
RENAME COLUMN city TO student_city;

ALTER TABLE student_details
MODIFY COLUMN name VARCHAR(150) NOT NULL;

ALTER TABLE student_details
MODIFY COLUMN gender VARCHAR(10) AFTER name;

ALTER TABLE student_details
DROP COLUMN gender;

DESCRIBE student_details;

-- DROP TABLE student_details;