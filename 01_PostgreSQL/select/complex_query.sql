-- Query with ordering
SELECT name, age
FROM students
ORDER BY age;

-- Query with filtering
SELECT department, COUNT(*)
FROM students
GROUP BY department;