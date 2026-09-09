SELECT MIN(salary) AS lowest_salary
FROM employees;

SELECT MIN(hire_date) AS first_hired
FROM employees;

SELECT department_id, MIN(salary) AS lowest_salary
FROM employees
GROUP BY department_id;