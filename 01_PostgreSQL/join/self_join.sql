SELECT e.employee_id, e.first_name AS employee, m.first_name AS manager
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id;

SELECT j.student_id, j.name AS junior, s.name AS senior
FROM students j
JOIN students s
ON j.grade < s.grade;

SELECT e.first_name AS employee, c.first_name AS colleague, e.department_id
FROM employees e
JOIN employees c
ON e.department_id = c.department_id
AND e.employee_id <> c.employee_id;
