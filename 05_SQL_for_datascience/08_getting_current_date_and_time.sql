USE sql_practice_db;

-- Get the current date
SELECT CURRENT_DATE;

-- Get the current time
SELECT CURRENT_TIME;

-- Get the current date and time using CURRENT_TIMESTAMP
SELECT CURRENT_TIMESTAMP;

-- Get the current date and time using NOW()
SELECT NOW();

-- Get the local date and time using LOCALTIME
SELECT LOCALTIME;

-- Get the local date and time using LOCALTIMESTAMP
SELECT LOCALTIMESTAMP;

-- Create a logs table for date and time practice
CREATE TABLE logs (
    id INT PRIMARY KEY AUTO_INCREMENT,
    event VARCHAR(100),
    created_at DATETIME
);

-- Insert a record with current date and time
INSERT INTO logs (event, created_at)
VALUES ('data_import', NOW());

-- View inserted log record
SELECT * FROM logs;