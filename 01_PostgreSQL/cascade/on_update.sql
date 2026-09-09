-- Parent table
CREATE TABLE students (
    student_id NUMBER PRIMARY KEY,
    name VARCHAR2(50) NOT NULL
);

-- Child table with automated update
CREATE TABLE enrollments (
    enrollment_id NUMBER PRIMARY KEY,
    student_id NUMBER,
    course_id NUMBER,
    CONSTRAINT fk_student FOREIGN KEY (student_id)
    REFERENCES students(student_id)
    ON UPDATE CASCADE
);
