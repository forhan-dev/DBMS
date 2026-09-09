SELECT MAX(salary) AS highest_salary
FROM employees;

SELECT MAX(hire_date) AS most_recent_hired
FROM employees;

SELECT department_id, MAX(salary) AS dept_max_salary
FROM employees
GROUP BY department_id;
