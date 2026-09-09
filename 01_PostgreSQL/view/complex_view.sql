CREATE VIEW student_grades AS
SELECT s.name, c.course_name, e.grade
FROM students s
JOIN enrollments e 
ON s.student_id = e.student_id
JOIN courses c 
ON e.course_id = c.course_id;


CREATE VIEW avg_student_grades AS
SELECT s.name, AVG(CASE WHEN e.grade = 'A' THEN 4
                        WHEN e.grade = 'B' THEN 3
                        WHEN e.grade = 'C' THEN 2
                        ELSE 0 END) AS gpa
FROM students s
JOIN enrollments e 
ON s.student_id = e.student_id
GROUP BY s.name;
