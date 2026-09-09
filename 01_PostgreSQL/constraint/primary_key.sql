CREATE TABLE students (
    student_id NUMBER PRIMARY KEY,
    name VARCHAR2(50)
);

CREATE TABLE students (
    student_id NUMBER,
    name VARCHAR2(50),
    CONSTRAINT pk_students PRIMARY KEY (student_id)
);

CREATE TABLE enrollments (
    student_id NUMBER,
    course_id NUMBER,
    grade VARCHAR2(2),
    CONSTRAINT pk_enrollments PRIMARY KEY (student_id, course_id)
);

ALTER TABLE students
ADD CONSTRAINT pk_students PRIMARY KEY (student_id);

ALTER TABLE students
DROP PRIMARY KEY;
