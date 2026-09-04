SELECT name, avg_grade
FROM (
    SELECT student_id, name, AVG(grade) AS avg_grade
    FROM students s
    JOIN enrollments e ON s.student_id = e.student_id
    GROUP BY student_id, name
);
