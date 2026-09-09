CREATE TABLE students (
    student_id NUMBER,
    name VARCHAR2(50),
    age NUMBER NOT NULL
);

CREATE TABLE students (
    student_id NUMBER,
    name VARCHAR2(50) NOT NULL,
    email VARCHAR2(100) NOT NULL
);

ALTER TABLE students
MODIFY grade VARCHAR2(2) NOT NULL;
