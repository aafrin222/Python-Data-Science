USE sql_practice_db;

-- Create classes table
CREATE TABLE classes (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL
);

-- Create students table with foreign key
CREATE TABLE students_fk (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES classes(class_id)
        ON UPDATE CASCADE
        ON DELETE SET NULL
);

-- Insert sample data into classes table
INSERT INTO classes (class_name)
VALUES ('Mathematics'), ('Science'), ('History');

-- Insert sample data into students_fk table
INSERT INTO students_fk (student_name, class_id)
VALUES
('Alice', 1),
('Bob', 2),
('Charlie', 1);

-- View data from classes table
SELECT * FROM classes;

-- View data from students_fk table
SELECT * FROM students_fk;

-- Check table structure with foreign key
SHOW CREATE TABLE students_fk;

-- View all foreign keys in current database
SELECT
    table_name,
    column_name,
    constraint_name,
    referenced_table_name,
    referenced_column_name
FROM information_schema.key_column_usage
WHERE referenced_table_name IS NOT NULL
AND table_schema = 'sql_practice_db';