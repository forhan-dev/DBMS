CREATE TABLE enrollments (
    enrollment_id NUMBER PRIMARY KEY,
    student_id NUMBER,
    course_id NUMBER,
    CONSTRAINT fk_student FOREIGN KEY (student_id)
        REFERENCES students(student_id)
);
