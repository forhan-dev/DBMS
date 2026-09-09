CREATE TABLE students (
    student_id NUMBER,
    name VARCHAR2(50),
    status VARCHAR2(20) DEFAULT 'active'
);

ALTER TABLE students
MODIFY age DEFAULT 18;
