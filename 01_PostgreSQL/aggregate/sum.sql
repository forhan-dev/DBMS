SELECT SUM(salary) AS total_salary
FROM employees;

SELECT department_id,
       SUM(salary) AS dept_total_salary
FROM employees
GROUP BY department_id;
