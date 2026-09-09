SELECT COUNT(*) AS total_employees
FROM employees;

SELECT COUNT(salary) AS salary_count
FROM employees;

SELECT department_id, COUNT(*) AS total_employee
FROM employees
GROUP BY department_id;
