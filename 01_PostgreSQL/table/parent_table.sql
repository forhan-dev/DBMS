-- Create a table with constraints
CREATE TABLE students (
    student_id NUMBER PRIMARY KEY,
    name VARCHAR2(50) NOT NULL,
    age NUMBER CHECK (age > 0),
    email VARCHAR2(100) UNIQUE
);

-- Describe the table structure
DESCRIBE students;

-- List all tables in the current schema
SELECT table_name 
FROM user_tables;

-- List all constraints on the students table
SELECT constraint_name, constraint_type 
FROM user_constraints
WHERE table_name = 'STUDENTS';

INSERT INTO students (student_id, name, age, email) 
VALUES (1, 'Alice', 20, 'alice@example.com');

SELECT * FROM students;