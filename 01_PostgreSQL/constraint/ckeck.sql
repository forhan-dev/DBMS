CREATE TABLE students (
    student_id NUMBER,
    name VARCHAR2(50),
    age NUMBER CHECK (age > 0)
);

CREATE TABLE students (
    student_id NUMBER,
    name VARCHAR2(50),
    email VARCHAR2(100),
    CONSTRAINT chk_email CHECK (email LIKE '%@%')
);

CREATE TABLE students (
    student_id NUMBER,
    name VARCHAR2(50),
    age NUMBER,
    CONSTRAINT chk_age_name CHECK (age >= 18 AND name LIKE 'M%')
);

ALTER TABLE students
ADD CONSTRAINT chk_email CHECK (email LIKE '%@%');

ALTER TABLE students
DROP CONSTRAINT chk_age;
