CREATE TABLE students (
    student_id NUMBER,
    name VARCHAR2(50),
    email VARCHAR2(100) UNIQUE
);

-- Create table with unique constraint
CREATE TABLE students (
    student_id NUMBER,
    email VARCHAR2(100),
    name VARCHAR2(50),
    CONSTRAINT uq_email_name UNIQUE (email, name)
);

ALTER TABLE students
ADD CONSTRAINT uq_name UNIQUE (name);

ALTER TABLE students
DROP CONSTRAINT uq_name;
