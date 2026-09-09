CREATE TABLE enrollments (
    enrollment_id NUMBER PRIMARY KEY,
    student_id NUMBER REFERENCES students(student_id),
    course_id NUMBER
);

CREATE TABLE enrollments (
    enrollment_id NUMBER PRIMARY KEY,
    student_id NUMBER,
    CONSTRAINT fk_student FOREIGN KEY (student_id) 
    REFERENCES students(student_id)
);

CREATE TABLE enrollments (
    enrollment_id NUMBER PRIMARY KEY,
    student_id NUMBER,
    course_id NUMBER,
    semester VARCHAR2(10),
    CONSTRAINT fk_course FOREIGN KEY (course_id, semester) 
    REFERENCES courses(course_id, semester)
);

ALTER TABLE enrollments
ADD CONSTRAINT fk_student FOREIGN KEY (student_id)
REFERENCES students(student_id);

ALTER TABLE enrollments
DROP CONSTRAINT fk_student;
